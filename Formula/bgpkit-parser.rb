class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.0-beta.3"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.0-beta.3/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "d5d46c667fe53e869f553f995a58024793a61810a7fcde5381f74b63d002ee12"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
