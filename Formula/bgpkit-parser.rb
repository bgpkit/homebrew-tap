class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.11"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.11/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "e85522f69f1e2dfdd21acdd83b1347b8aadbf96b2a5b77953ec68ca35635c724"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
