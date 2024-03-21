class BgpkitCommons < Formula
  desc "Tool for accessing common BGP data"
  homepage "https://github.com/bgpkit/bgpkit-commons"

  version "0.5.2"

  url "https://github.com/bgpkit/bgpkit-commons/releases/download/v0.5.2/bgpkit-commons-universal-apple-darwin.tar.gz"
  sha256 "20b2b69cc31a0a4ba2de6a8a1b36cc4b501f53eb12f5a66108fc671124b68766"

  def install
    bin.install "bgpkit-commons"
  end

  test do
    system "#{bin}/bgpkit-commons --version"
  end

end
