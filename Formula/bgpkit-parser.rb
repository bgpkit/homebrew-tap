class BgpkitParser < Formula

  desc "MRT/BGP data CLI parser"
  homepage "https://github.com/bgpkit/bgpkit-parser"

  version "0.10.0"

  url "https://github.com/bgpkit/bgpkit-parser/releases/download/v0.10.0/bgpkit-parser-universal-apple-darwin.tar.gz"
  sha256 "f331f975e8f8e6559d8654778e08297df9dc520f93732dafaa0a714ee9500132"

  def install
    bin.install "bgpkit-parser"
  end

  test do
    system "#{bin}/bgpkit-parser --version"
  end

end
