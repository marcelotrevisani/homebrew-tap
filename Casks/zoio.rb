cask "zoio" do
  version "0.1.0"
  sha256 "d31efe8c5e8df3e57bcbccc0045d08253c7f573d6d0caefe9a2975041fd72e39"

  url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-macos.dmg"
  name "zoio"
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"

  binary "zoio"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/zoio"]
  end
end
