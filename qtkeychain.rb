require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Qtkeychain < Formula
  homepage 'https://github.com/frankosterfeld/qtkeychain'
  head 'https://github.com/frankosterfeld/qtkeychain.git', :using => :git
  url 'https://github.com/frankosterfeld/qtkeychain/archive/v0.6.2.tar.gz'
  sha256 'ae13459234feeeab3a154457319d9b26ee9600973443517c77e055838ebae63c'

  depends_on 'cmake' => :build
  depends_on "qt5"

  def install
    system "cmake", ".", "-DCMAKE_PREFIX_PATH=#{Formula["qt5"].opt_prefix}", *std_cmake_args
    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test qtkeychain`.
    system "false"
  end
end
