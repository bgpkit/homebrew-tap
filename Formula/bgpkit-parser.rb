class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.1"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.1/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "a0a59a96eab4c19d7c5d8c1efca56faa6fc75d6942f4fd57c5adbf5a158ba92f"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
