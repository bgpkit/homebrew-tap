class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.7.0"
  url "https://github.com/bgpkit/monocle/releases/download/v0.7.2/monocle-universal-apple-darwin.tar.gz"
  sha256 "9b883a8bfd8015159cd978e3d5a473bbcf0579994858333ebd4f2ad762f64794"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
