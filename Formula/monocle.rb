class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.6.1"
  url "https://github.com/bgpkit/monocle/releases/download/v0.6.1/monocle-universal-apple-darwin.tar.gz"
  sha256 "e745f9deb21c9d14f61684d4ab076e0cfe8812c1616f344af9ecdfd1e8a29a0d"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
