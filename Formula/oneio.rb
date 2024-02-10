class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.1"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.1/oneio-universal-apple-darwin.tar.gz"
  sha256 "edf2a1927ef6459df990803e005335be8defe33cbed93a04f0dcd8ef97a57154"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
