class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"

  version "0.7.0"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.0/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "ae0b53b16d3a167444e74e921d2ea6f3e932d9da7a210e02dd853fc68fee719c"

  def install
    bin.install "bgpkit-broker"
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

end
