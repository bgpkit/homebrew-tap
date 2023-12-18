class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.5.2"
  url "https://github.com/bgpkit/monocle/releases/download/v0.5.2/monocle-universal-apple-darwin.tar.gz"
  sha256 "7622f6f677259601ab1ae7fbd3f622239be8cbe7bf2a5548be67f9798dbec28b"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
