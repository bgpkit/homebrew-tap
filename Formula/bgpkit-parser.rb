class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.12.0"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.12.0/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "1a245412eead968392a2b0c4311c294ad64d500dbeaa6220ea37338640bc5c17"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
