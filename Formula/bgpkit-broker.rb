class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.7.5"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.5/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "461dbcbca4a86a0db5d1b11bab5669f6a7e51c320157e9fa5ea06e30729b99bb"

  def install
    bin.install "bgpkit-broker"
    (var/"bgpkit/bgpkit-broker").mkpath
  end

  def post_install
    (var/"bgpkit/bgpkit-broker").mkpath
  end

  test do
    system "#{bin}/bgpkit-broker --version"
  end

  service do
    run [opt_bin/"bgpkit-broker", "serve", "--bootstrap", var/"bgpkit/bgpkit-broker/database.sqlite3"]
    keep_alive true
    log_path var/"bgpkit/bgpkit-broker/broker-log.log"
    error_log_path var/"bgpkit/bgpkit-broker/broker-log.log"
  end

end
