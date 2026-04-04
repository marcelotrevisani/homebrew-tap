cask "cafezim" do
  version "1.1.1"
  sha256 "f77ae607e3fe85c949e5be5e7347d0476389e8a4c29f79ce62b6dc33e6337cb6"

  url "https://github.com/marcelotrevisani/cafezim/releases/download/v#{version}/Cafezim-v#{version}.dmg"
  name "Cafezim"
  desc "Lightweight menu bar app that keeps your Mac awake"
  homepage "https://github.com/marcelotrevisani/cafezim"

  app "Cafezim.app"

  zap trash: [
    "~/Library/Preferences/com.cafezim.app.plist",
  ]
end
