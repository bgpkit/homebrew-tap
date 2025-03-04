class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.8.0"
  url "https://github.com/bgpkit/monocle/releases/download/v0.8.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "56dc7732edfb3b8cc412e0fd02e00de5878f10e32887b0ac0aeb0cfa47a17019"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
