cask "zoio" do
  version "0.2.0"
  sha256 "fca2e01d5fedd42b5cb037859c25a6a5baaae2ecd54a0a18a1ecc556f572a33e"

  url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-macos.dmg"
  name "zoio"
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"

  binary "zoio"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/zoio"]
  end
end
