class Zoio < Formula
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b5428eb2c175c434fbde25efd0e52818f243c005ad126e84abfed25e09fafe42"
    else
      url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "98745ad266991ddeeb1e546ae8f0d72c65cee6852ed4b72918f1b470d409828c"
    end
  end

  on_linux do
    url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "33081282023791ebc1959976549e67b03c79f083502b83b53f69b36243c767ef"
  end

  def install
    bin.install "zoio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zoio --version", 2)
  end
end
