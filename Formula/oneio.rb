class Oneio < Formula
  desc "Rust CLI that can read from anywhere"
  homepage "https://github.com/bgpkit/oneio"

  version "0.24.1"

  on_macos do
    url "https://github.com/bgpkit/oneio/releases/download/v0.24.1/oneio-universal-apple-darwin.tar.gz"
    sha256 "5763b146607df2b1ecde6b7cb839053b1f3c625ac97cecd367567968673273c1"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bgpkit/oneio/releases/download/v0.24.1/oneio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd282dbca6c35209d0a0c9282dd5ac9ccaddf5bdfce08f1245a7abd71beb769c"
    elsif Hardware::CPU.arm?
      url "https://github.com/bgpkit/oneio/releases/download/v0.24.1/oneio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5a91b2bf865b76d84163585fffb58d749182b6874aae0a1e2bc321105890920"
    end
  end

  def install
    bin.install "oneio"
  end

  test do
    system "#{bin}/oneio --version"
  end
end
