class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.7"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.7/oneio-universal-apple-darwin.tar.gz"
  sha256 "ddfda9fd412eb53aed40238dedd21003109a36b1d0afafdac1af601f5eddd3ab"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
