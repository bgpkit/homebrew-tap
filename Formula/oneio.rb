class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.2"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.2/oneio-universal-apple-darwin.tar.gz"
  sha256 "aab795e12265b3664f3bcd40e71a8a25dd68ee60a9f4b6fda28186210f6df523"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
