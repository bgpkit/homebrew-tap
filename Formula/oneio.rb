class Oneio < Formula

  desc "A Rust CLI that can read from anywhere."
  homepage "https://github.com/bgpkit/oneio"

  version "0.15.12"
  url "https://github.com/bgpkit/oneio/releases/download/v0.15.12/oneio-universal-apple-darwin.tar.gz"
  sha256 "6e78f258a6d933c5e7a15e04e2bf5d2f10d735e1252c07965a29449649921665"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
