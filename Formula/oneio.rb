class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.19.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.19.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "9c0acfb2c72d628517913717adcc3f22fca259e40e30e12860ea2191a5a771bc"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
