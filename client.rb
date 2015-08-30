require 'formula'

class Client < Formula
  homepage 'https://github.com/owncloud/client'
  head 'https://github.com/owncloud/client.git'
  depends_on 'cmake' => :build
  depends_on 'qtkeychain'
  # Depends on Qt, but we want to accept a system Qt as well. According to the
  # FAQ, there is no way to configure a formula with a parameter (as of August
  # 2015), and the only way is to let the user run `brew edit` after failure.
  depends_on 'qt5' => :optional

  def install
    # Dependency tracking only, uncomment this section only if you know what you
    # are doing!
    # mkdir 'build'
    # cd 'build' do
    #   system "cmake", "..", "-DCMAKE_PREFIX_PATH=/usr/local/opt/qt5", *std_cmake_args
    #   system "make package"
    # end
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test client`.
    system "false"
  end
end
