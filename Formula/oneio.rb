class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.3"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.3/oneio-universal-apple-darwin.tar.gz"
  sha256 "f7776aabd18f9631c6eaad1cf60b1c582226b85823147a933f24422e2d99e662"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
