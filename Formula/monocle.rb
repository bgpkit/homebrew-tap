class Monocle < Formula
  desc "See through all BGP data with a monocle"
  homepage "https://github.com/bgpkit/monocle"
  url "https://github.com/bgpkit/monocle/releases/download/v1.5.0/monocle-universal-apple-darwin.tar.gz"
  sha256 "996bf04dedbccb1e976b732241fd945fae189d9c5fe6f07ebf760f8a568804f6"

  def install
    bin.install "monocle"
  end

  test do
    system bin/"monocle", "--version"
  end
end
