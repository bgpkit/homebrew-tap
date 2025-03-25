class WaybackRpki < Formula

  desc "An CLI tool for RPKI ROAs historical lookup."
  homepage "https://github.com/bgpkit/wayback-rpki"

  version "1.0.1"
  url "https://github.com/bgpkit/wayback-rpki/releases/download/v1.0.1/wayback-rpki-universal-apple-darwin.tar.gz"
  sha256 "a932af6af52036648bd3f564689bfe9786dbd7289298d55889e6beb691a24251"

  def install
    bin.install "wayback-rpki"
    (var/"bgpkit/wayback-rpki").mkpath
  end

  def post_install
    (var/"bgpkit/wayback-rpki").mkpath
  end

  test do
    system "#{bin}/wayback-rpki --version"
  end

  # https://docs.brew.sh/Formula-Cookbook#service-files
  service do
    run [opt_bin/"wayback-rpki", "serve", "--bootstrap", var/"bgpkit/wayback-rpki/roas_trie.bin.gz"]
    keep_alive true
    log_path var/"bgpkit/wayback-rpki/wayback-rpki.log"
    error_log_path var/"bgpkit/wayback-rpki/wayback-rpki.error.log"
  end

end
