class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.10.1"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.10.1/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "2863f108b3494c205a6691f32246269bdab28a8c3bf0f232f3238071c8306bf3"

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
