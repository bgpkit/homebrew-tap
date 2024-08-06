class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  version "0.7.1"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.1/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "eb1243090f8a44e82a62f6a8c1b29aad663c2e646a635fce5d0f02a4160daa53"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
