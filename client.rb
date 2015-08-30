require 'formula'

class Client < Formula
  homepage 'https://github.com/owncloud/client'
  head 'https://github.com/owncloud/client.git'
  depends_on 'cmake' => :build
  depends_on 'qtkeychain'
  depends_on 'qt5'

  def install
    # Dependency tracking only, uncomment this section only if you know what you
    # are doing!
    # mkdir 'build'
    # cd 'build' do
    #   system "cmake .. #{std_cmake_parameters}"
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
