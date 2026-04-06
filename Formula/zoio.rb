class Zoio < Formula
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4901748c60229121bb56d4319b8bbcbd61c478a409a9584e2dcf0585094e07e4"
    else
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7e93ffca974ea9f9004d4ca16f5052c9a808fa27a26f6634a6949014e319cb51"
    end
  end

  on_linux do
    url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10471e3e1c96cce2f8486e3ac113590200075f27aa79a45d3b280459a7387c3e"
  end

  def install
    bin.install "zoio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zoio --version", 2)
  end
end
