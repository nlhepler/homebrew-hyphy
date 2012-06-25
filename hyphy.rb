require 'formula'

class Hyphy < Formula
  homepage 'http://octamonkey.ucsd.edu/hyphywiki/index.php/Main_Page'
  head 'git://github.com/veg/hyphy.git'

  depends_on 'cmake' => :build

  def install
    system "cmake", ".", "-DINSTALL_PREFIX=#{prefix}"
    system "make MP2"
    system "make install"
  end

  def test
    system "false"
  end
end
