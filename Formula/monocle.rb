class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "1.0.1"
  url "https://github.com/bgpkit/monocle/releases/download/v1.0.1/monocle-universal-apple-darwin.tar.gz"
  sha256 "08ec2eeef5865647a7dab1dc75b5afcd772bc490c0f3b0872e5d9ba351977b88"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
