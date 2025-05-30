class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.18.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.18.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "3023cedbc6622e8fb5cdbfeadb46fa1478f5aa21a36c772ad9bf058df3190149"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
