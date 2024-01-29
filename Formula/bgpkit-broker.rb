class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.0-beta.5/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "c410cc98be363bac920f8d41ae1200dae8526b59647c72e422654c3411dc40ff"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
