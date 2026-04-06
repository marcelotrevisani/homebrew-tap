class Zoio < Formula
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0c8f74a825736b641b29d6c9b909f651096de1a01b9214ca4c75cfaa5c4c4a72"
    else
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3ffc526dd0b283f392f0b8294446b2ab774840c0a3761a8e9685099b1df479e1"
    end
  end

  on_linux do
    url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "316e71d43a6e3fc65c6dad8b72612c6dbc92c94f9a4c3c10ffc7875a568e76b5"
  end

  def install
    bin.install "zoio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zoio --version", 2)
  end
end
