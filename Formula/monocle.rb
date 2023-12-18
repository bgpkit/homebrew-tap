class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.5.2"
  url "https://github.com/bgpkit/monocle/releases/download/v0.5.2/monocle-universal-apple-darwin.tar.gz"
  sha256 "a57995904db73aa0ee1e5ff938f970cfdb67203d78b95e1293ba97d38a247413"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
