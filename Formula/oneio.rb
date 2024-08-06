class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.17.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.17.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "005d44e5e4d3824a1b4be5aadd5609ab1458118f710711b1e172547676f599db"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
