class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  version "0.7.0-beta.4"
  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.0-beta.4/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "e5583fa3ea623d6d2f2a0d93a9564f4e5936a0c82814813858d5c59f1a4f33e5"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
