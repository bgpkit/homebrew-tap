class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "1.1.0"
  url "https://github.com/bgpkit/monocle/releases/download/v1.1.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "1ff5ef775acf8a7edfdbcd94f3c2dabd233931dfcc77573333789fa9ebbf8a81"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
