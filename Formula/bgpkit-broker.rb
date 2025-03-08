class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.7.7"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.7/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "1f941f8798dec46e6dce60a80eec5511f99371f4674a2ed78aabccee5d9c43a8"

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
