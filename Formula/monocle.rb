class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "1.2.0"
  url "https://github.com/bgpkit/monocle/releases/download/v1.2.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "72c53312bf6413dd74f49a8a20d00b26c924f53d46052b45c28cf5fe96cf37b2"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
