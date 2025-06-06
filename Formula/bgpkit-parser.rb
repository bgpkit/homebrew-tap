class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.11.1"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.11.1/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "a5730ca851cd7bb04cd1c891db0b1c1f023d0d6e5c776e0f72cd2130b3ad5321"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
