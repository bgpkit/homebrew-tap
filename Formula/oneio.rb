class Oneio < Formula

  desc "A Rust CLI that can read from anywhere."
  homepage "https://github.com/bgpkit/oneio"

  version "0.15.8"
  url "https://github.com/bgpkit/oneio/releases/download/v0.15.8/oneio-universal-apple-darwin.tar.gz"
  sha256 "5b84fefc5e061306754da1273768f9daf15851b31e33cd7a527cc586d912c163"

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version version"
  end

end
