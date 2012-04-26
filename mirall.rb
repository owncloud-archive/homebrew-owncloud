require 'formula'

class Mirall < Formula
  homepage ''
  head 'git://gitorious.org/owncloud/mirall.git'
  depends_on 'cmake' => :build
  depends_on 'csync'
  depends_on 'qt'

  def install
     mkdir 'build'
     cd 'build' do
      system "cmake .. #{std_cmake_parameters}"
      system "make install"
     end
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test csync`.
    system "false"
  end
end
