class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.6.0"
  url "https://github.com/bgpkit/monocle/releases/download/v0.6.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "ed9b3e82c6c81da56f680e6aeae9eae585fff2b1e22a1d737fa6a0fc85112481"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
