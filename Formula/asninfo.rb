class Asninfo < Formula

  desc "ASN data exporter"
  homepage "https://github.com/bgpkit/asninfo"

  version "0.4.3"
  url "https://github.com/bgpkit/asninfo/releases/download/v0.4.3/asninfo-universal-apple-darwin.tar.gz"
  sha256 "c50b3b28501dddced00bc6a7481d0cea4dcabead477b5321cb8121f5c1ff96cf"

  def install
    bin.install "asninfo"
  end

  test do
    system "#{bin}/asninfo --version version"
  end

end
