class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.10"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.10/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "caebf400a747877987d5eae7ae9040d20f7ae743d5c476ed967c100eb03b6119"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
