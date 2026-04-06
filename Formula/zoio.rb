class Zoio < Formula
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "13a1a4fff26098e22201f567b187b47029441ce11913f3601ffdd8e718666b93"
    else
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3558200467ec8fe98892ef36e9568f946611f6d41bf8e0b6c9fba15c0238a328"
    end
  end

  on_linux do
    url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "75a6351a099f5c459e70b4ad6d8f7a925204d8027e1a14f01da102910c2d05f9"
  end

  def install
    bin.install "zoio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zoio --version", 2)
  end
end
