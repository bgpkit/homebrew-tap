class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.11.0"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.11.0/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "d10eb330e7114519a143a62a81c7ac7c46b98a8caf11e7b25bcd4a90aeae0fb3"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
