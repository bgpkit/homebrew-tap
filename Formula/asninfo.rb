class Asninfo < Formula

  desc "ASN data exporter"
  homepage "https://github.com/bgpkit/asninfo"

  version "0.1.0"
  url "https://github.com/bgpkit/asninfo/releases/download/v0.1.0/asninfo-universal-apple-darwin.tar.gz"
  sha256 "7c9280e7f7585bdb70d0c2a2fbf41d7da099fc1f9ed2f52a8d41b6c4c705e939"

  def install
    bin.install "asninfo"
  end

  test do
    system "#{bin}/asninfo --version version"
  end

end
