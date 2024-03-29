class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.5"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.5/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "c0df91545a8b0a1914e361a2a52df92610c9c8fd130f27a5c362896443dd3565"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
