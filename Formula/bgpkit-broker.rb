class BgpkitBroker < Formula

  desc "BGP MRT files finder"
  homepage "https://github.com/bgpkit/bgpkit-broker"
  license "MIT"

  version "0.7.10"

  url "https://github.com/bgpkit/bgpkit-broker/releases/download/v0.7.10/bgpkit-broker-universal-apple-darwin.tar.gz"
  sha256 "7d2b1bf0829d95e48f4039e02005b5d4ba330b3e327d8b595fab0f98b64777d5"

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
