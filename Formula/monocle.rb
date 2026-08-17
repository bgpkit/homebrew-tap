class Monocle < Formula
  desc "See through all BGP data with a monocle"
  homepage "https://github.com/bgpkit/monocle"
  url "https://github.com/bgpkit/monocle/releases/download/v1.5.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "0c0253533ab4a99cdc0fb825b6390ace9eb7f4fb27e6bc23d151ef98b630422b"

  def install
    bin.install "monocle"
  end

  test do
    system bin/"monocle", "--version"
  end
end
