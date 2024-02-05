class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.5.3"
  url "https://github.com/bgpkit/monocle/releases/download/v0.5.3/monocle-universal-apple-darwin.tar.gz"
  sha256 "a010d75f55c99d97044186a53b167470bd32d5c17befe03210fff48616d185c5"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
