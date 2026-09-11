class Monocle < Formula
  desc "See through all BGP data with a monocle"
  homepage "https://github.com/bgpkit/monocle"
  url "https://github.com/bgpkit/monocle/releases/download/v1.6.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "dbd9339c239e25314409ef150353bcd338ceaeda484b07c1bbb703ee389cb99e"

  def install
    bin.install "monocle"
  end

  test do
    system bin/"monocle", "--version"
  end
end
