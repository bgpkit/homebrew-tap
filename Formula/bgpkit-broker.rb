class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.7.9"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.9/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "363da43e126aeca4923a0492938579af3d0faf0d6e402028b1ae0706925b3122"

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
    error_log_path var/"bgpkit/bgpkit-broker/broker-log.error.log"
  end

end
