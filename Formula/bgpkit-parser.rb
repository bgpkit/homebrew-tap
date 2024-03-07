class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.2"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.2/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "550b59b14e08f48347bf6fb566ef573807740322c8a99957d444f438e6ec4a47"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
