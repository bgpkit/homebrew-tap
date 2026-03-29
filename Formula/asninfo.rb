class Asninfo < Formula

  desc "ASN data exporter"
  homepage "https://github.com/bgpkit/asninfo"

  version "0.4.3"
  url "https://github.com/bgpkit/asninfo/releases/download/v0.4.3/asninfo-universal-apple-darwin.tar.gz"
  sha256 "9ee71b231224a8162d3a0f9b607b378336262bf38e1433d983d26823e2d3b16b"

  def install
    bin.install "asninfo"
  end

  test do
    system "#{bin}/asninfo --version version"
  end

end
