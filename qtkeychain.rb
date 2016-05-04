require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook

class Qtkeychain < Formula
  homepage 'https://github.com/frankosterfeld/qtkeychain'
  head 'https://github.com/frankosterfeld/qtkeychain.git', :using => :git
  url 'https://github.com/frankosterfeld/qtkeychain/archive/v0.6.2.tar.gz'
  sha1 'da39a3ee5e6b4b0d3255bfef95601890afd80709'

  depends_on 'cmake' => :build
  # Depends on Qt, but we want to accept a system Qt as well. According to the
  # FAQ, there is no way to configure a formula with a parameter (as of August
  # 2015), and the only way is to let the user run `brew edit` after failure.
  depends_on 'qt5' => :optional

  def install
    system "cmake", ".", "-DCMAKE_PREFIX_PATH=/usr/local/opt/qt5", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test qtkeychain`.
    system "false"
  end
end
