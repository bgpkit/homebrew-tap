class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "1.0.2"
  url "https://github.com/bgpkit/monocle/releases/download/v1.0.2/monocle-universal-apple-darwin.tar.gz"
  sha256 "8591183033ebaa6abd19e0db64bf8d08db7c3942cdff8b50edeacbe2d42a9ac8"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
