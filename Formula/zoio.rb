class Zoio < Formula
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d25b3d092d6570cb2879ff16a30e17628f1961e06bf8c70048c84b9c00729d31"
    else
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "833fe0b2d724dca5f1f27fc89b73263fac5ea825583f736968f7b513b55bd226"
    end
  end

  on_linux do
    url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec426ba25083b97093a1045196f189ba453582b468484ffaacecf18ba4a4a708"
  end

  def install
    bin.install "zoio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zoio --version", 2)
  end
end
