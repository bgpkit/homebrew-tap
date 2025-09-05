class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.9.0"
  url "https://github.com/bgpkit/monocle/releases/download/v0.9.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "9defb0299b572c63104f370bf5d2c89e552fead75b7068fbc5ecb3467c29728d"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
