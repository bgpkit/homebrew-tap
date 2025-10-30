class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.20.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.20.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "67300fc8b0bc1d94111b107e9d6c49925906dbfb036ab2f2c3c674ff1ae93838"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
