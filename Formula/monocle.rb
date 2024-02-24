class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.5.4"
  url "https://github.com/bgpkit/monocle/releases/download/v0.5.4/monocle-universal-apple-darwin.tar.gz"
  sha256 "cf1fda306658902947e3aacac5ca791dd94f656d87f5c406c2755bfafc224f66"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
