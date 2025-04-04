class Asninfo < Formula

  desc "ASN data exporter"
  homepage "https://github.com/bgpkit/asninfo"

  version "0.2.1"
  url "https://github.com/bgpkit/asninfo/releases/download/v0.2.1/asninfo-universal-apple-darwin.tar.gz"
  sha256 "ebf2687e77eea99c1ec2ea54f80aae68ea6215d8c1ce9787c43cd9427557a177"

  def install
    bin.install "asninfo"
  end

  test do
    system "#{bin}/asninfo --version version"
  end

end
