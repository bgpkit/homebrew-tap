class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "58f389c923cb5d6fb8ef0f151d4a849da88178467bad5c39fcd42ceb39c90cc5"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
