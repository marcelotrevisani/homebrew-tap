cask "zoio" do
  version "0.1.1"
  sha256 "96c2facc23be59b7129dea55f64b0800b09a203b28e26d57eac62b109f7b2812"

  url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-macos.dmg"
  name "zoio"
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"

  binary "zoio"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/zoio"]
  end
end
