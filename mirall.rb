require 'formula'

class Mirall < Formula
  homepage ''
  head 'git://gitorious.org/owncloud/mirall.git'
  depends_on 'cmake' => :build
# ocsync should not be installed
#  depends_on 'ocsync'
  depends_on 'qt5'
  depends_on 'neon'

def install
#  Dependency tracking only, uncomment this section only if you know what you
#  are doing!
#
#     mkdir 'build'
#     cd 'build' do
#      system "cmake .. #{std_cmake_parameters}"
#      system "make package"
#     end
end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test csync`.
    system "false"
  end
end
