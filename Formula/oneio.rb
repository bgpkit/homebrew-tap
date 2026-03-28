class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.21.0"

  url "https://github.com/bgpkit/oneio/releases/download/v0.21.0/oneio-universal-apple-darwin.tar.gz"
  sha256 "442fab118e72753d315e9c24cbc1e00b82aca56e13a5cbeb6352da79e616e48d"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end

end
