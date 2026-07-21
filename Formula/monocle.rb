class Monocle < Formula
  desc "See through all BGP data with a monocle"
  homepage "https://github.com/bgpkit/monocle"
  url "https://github.com/bgpkit/monocle/releases/download/v1.4.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "ef20cb77b58922abb7c4b7b5c42ac643261af0e7d1e84da32fd7153edd575e83"

  def install
    bin.install "monocle"
  end

  test do
    system bin/"monocle", "--version"
  end
end
