class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.6.2"
  url "https://github.com/bgpkit/monocle/releases/download/v0.6.2/monocle-universal-apple-darwin.tar.gz"
  sha256 "1c39ef5f578003a7a7e3a496afbb7ca573a806a0ed5a34b6da983479d5909759"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
