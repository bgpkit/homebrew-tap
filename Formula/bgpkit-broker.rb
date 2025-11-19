class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.9.2"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.9.2/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "3d48454b50651af86215c6d5b493ee896101f8116176dc2df22496b35946b12a"

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

  # https://docs.brew.sh/Formula-Cookbook#service-files
  service do
    run [opt_bin/"bgpkit-broker", "serve", "--bootstrap", var/"bgpkit/bgpkit-broker/database.sqlite3"]
    keep_alive true
    log_path var/"bgpkit/bgpkit-broker/broker-log.log"
    error_log_path var/"bgpkit/bgpkit-broker/broker-log.error.log"
  end

end
