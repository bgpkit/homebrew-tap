class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.4"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.4/oneio-universal-apple-darwin.tar.gz"
  sha256 "ef6abcfb35981c321eb2b58ab7448691a18ecd93361bbcd23349569c9cbe48ca"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
