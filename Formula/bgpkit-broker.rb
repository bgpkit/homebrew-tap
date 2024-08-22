class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  version "0.7.4"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.4/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "289e55c54288df0306ac10a66221a776ce5817f344d6f0df574c3c809d4bb627"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
