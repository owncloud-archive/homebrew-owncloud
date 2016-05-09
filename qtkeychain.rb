require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Qtkeychain < Formula
  homepage 'https://github.com/frankosterfeld/qtkeychain'
  head 'https://github.com/frankosterfeld/qtkeychain.git', :using => :git
  url 'https://github.com/frankosterfeld/qtkeychain/archive/v0.6.2.tar.gz'
  sha256 'ae13459234feeeab3a154457319d9b26ee9600973443517c77e055838ebae63c'

  option "without-qt4", "Build against Qt5 instead of Qt4 (default)"

  depends_on 'cmake' => :build
  depends_on "qt" if build.with? "qt4"
  depends_on "qt5" if build.without? "qt4"

  def install
    if build.with? "qt4"
      system "cmake", ".", "-DCMAKE_PREFIX_PATH=#{Formula["qt"].opt_prefix}", *std_cmake_args
    else
      system "cmake", ".", "-DCMAKE_PREFIX_PATH=#{Formula["qt5"].opt_prefix}", *std_cmake_args

    system "make install" # if this fails, try separate make/make install steps
    end
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test qtkeychain`.
    system "false"
  end
end
