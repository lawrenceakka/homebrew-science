require 'formula'

class Indi < Formula
  homepage 'http://www.indilib.org'
  url 'http://sourceforge.net/projects/indi/files/indilib/0.9/libindi_0.9.6.tar.gz/download'
  sha1 '2ce6a4efdb9786a129cf386344161b80de4f5c8f'

  depends_on 'pkg-config' => :build
  depends_on 'cmake' => :build
  depends_on 'libnova'
  depends_on 'libusb'
  depends_on 'libusb-compat'
  depends_on 'cfitsio'

  def install
    mkdir "build" do
        system "cmake", "..", *std_cmake_args
        system "make install"
    end
  end

end
