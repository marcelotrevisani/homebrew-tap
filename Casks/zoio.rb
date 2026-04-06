cask "zoio" do
  version "0.2.1"
  sha256 "55efefc5fcd54e38e35e36b91d6611a612ace0fdaa4a7de23e2b45cb870fd69b"

  url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-macos.dmg"
  name "zoio"
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"

  binary "zoio"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/zoio"]
  end
end
