class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.16.9"

  url "https://github.com/bgpkit/oneio/releases/download/v0.16.9/oneio-universal-apple-darwin.tar.gz"
  sha256 "a7a907284e99ad6b84fc1dec21b867e00b674ffac328e4c108dff0749f9ee99f"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
