class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.15.0"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.15.0/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "59a8cb7906bef2a72dd8217facbecfc6421917ed7095b764c723ee19db4f3c22"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
