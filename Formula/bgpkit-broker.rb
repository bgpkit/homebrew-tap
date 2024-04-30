class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  version "0.7.0-beta.6"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.0-beta.6/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "eaf5319f6afcbc3c81206c79656d3fb4e4f9a5d092b45f3060dfce59f33c8030"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
