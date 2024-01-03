class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.0-beta.1"
  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.0-beta.1/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "210fd1e813c7a30a5dc8a21a87bf3d25510ff262ada565883a0082ef69ed439c"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
