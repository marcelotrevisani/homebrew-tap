cask "zoio" do
  version "0.4.0"
  sha256 "b3ec748e911fea675515cc26b73229146acacd9fac935d16445a47f2a6d5b5a2"

  url "https://github.com/marcelotrevisani/zoio/releases/download/v#{version}/zoio-v#{version}-macos.dmg"
  name "zoio"
  desc "Cross-platform process resource monitor with real-time plots and CSV export"
  homepage "https://github.com/marcelotrevisani/zoio"

  binary "zoio"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{staged_path}/zoio"]
  end
end
