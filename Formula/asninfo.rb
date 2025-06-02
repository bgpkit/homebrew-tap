class Asninfo < Formula

  desc "ASN data exporter"
  homepage "https://github.com/bgpkit/asninfo"

  version "0.3.1"
  url "https://github.com/bgpkit/asninfo/releases/download/v0.3.1/asninfo-universal-apple-darwin.tar.gz"
  sha256 "418b52c02871cfcceb6bfdc5d29908f4cad072ee8bceb1d9b0555d1ac38d2f94"

  def install
    bin.install "asninfo"
  end

  test do
    system "#{bin}/asninfo --version version"
  end

end
