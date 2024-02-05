class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.0-beta.2"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.0-beta.2/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "b645848fff9e021b1cfb7ff4cb3a4728db24aea9e2a258bc9b7d3ae7878546ce"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
