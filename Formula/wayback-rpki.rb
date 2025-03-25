class WaybackRpki < Formula

  desc "An CLI tool for RPKI ROAs historical lookup."
  homepage "https://github.com/bgpkit/wayback-rpki"

  version "1.0.0"
  url "https://github.com/bgpkit/wayback-rpki/releases/download/v1.0.0/wayback-rpki-universal-apple-darwin.tar.gz"
  sha256 "3fdfaba74ca18a26dc9f5110be74807011c90becf89307d5e9d10a05d2a1196e"

  def install
    bin.install "wayback-rpki"
  end

  test do
    system "#{bin}/wayback-rpki --version"
  end

end
