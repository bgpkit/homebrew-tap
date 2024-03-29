class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.5.5"
  url "https://github.com/bgpkit/monocle/releases/download/v0.5.5/monocle-universal-apple-darwin.tar.gz"
  sha256 "d0eff80b55fd94fc5ea4c146726c9aa687c7c1c1447ef37fe01ccb0e544c5078"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
