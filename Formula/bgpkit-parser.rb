class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.6"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.6/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "2d24b6407c400f3d48cee8d0d9ab6c3ecab4433b4f9c173b685d5a7426920d3b"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
