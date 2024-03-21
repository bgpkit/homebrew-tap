class BgpkitCommons < Formula
  desc "Tool for accessing common BGP data"
  homepage "https://github.com/bgpkit/bgpkit-commons"

  version "0.5.1"

  url "https://github.com/bgpkit/bgpkit-commons/releases/download/v0.5.1/bgpkit-commons-universal-apple-darwin.tar.gz"
  sha256 "53071634cde680007023dd837a17ef1d2e8ddabe9910f0be3142a8400a76d092"

  def install
    bin.install "bgpkit-commons"
  end

  test do
    system "#{bin}/bgpkit-commons --version"
  end

end
