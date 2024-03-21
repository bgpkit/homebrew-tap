class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.5"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.5/oneio-universal-apple-darwin.tar.gz"
  sha256 "ec453daf0c40abaada3aa57db1ef5434d5c8afbc142d7af24f18060d22c45421"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
