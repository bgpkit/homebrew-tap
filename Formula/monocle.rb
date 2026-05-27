class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "1.3.0"
  url "https://github.com/bgpkit/monocle/releases/download/v1.3.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "67364e456c53e4cd3c2ae7ae32c4e28b218925df262ea9a2e1967eb8b065c39a"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
