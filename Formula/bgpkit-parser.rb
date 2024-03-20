class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.4"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.4/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "54f40a5a5862ad59e1fb2beed7fab7268ad9037fdb17d818d9b8c1cc57fd183d"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
