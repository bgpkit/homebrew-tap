class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.18.0"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.18.0/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "1cbc2107a713825c0cb24e46601c0ad83c51c8e651f006a09011080bb629141b"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
