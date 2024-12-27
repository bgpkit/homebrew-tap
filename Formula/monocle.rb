class Monocle < Formula

  desc "See through all BGP data with a monocle."
  homepage "https://github.com/bgpkit/monocle"

  version "0.7.0"
  url "https://github.com/bgpkit/monocle/releases/download/v0.7.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "af8866d30a3869621b8984b834469c07bd6e9236df66be1d56dac650b46d5720"

  def install
    bin.install "monocle"
  end

  test do
    system "#{bin}/monocle --version version"
  end

end
