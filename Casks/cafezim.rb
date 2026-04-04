cask "cafezim" do
  version "1.2.1"
  sha256 "8898b307c6ea1a46a5daf72ab722a714a9acdcc934e298a5e49927bdcd0fda77"

  url "https://github.com/marcelotrevisani/cafezim/releases/download/v#{version}/Cafezim-v#{version}.dmg"
  name "Cafezim"
  desc "Lightweight menu bar app that keeps your Mac awake"
  homepage "https://github.com/marcelotrevisani/cafezim"

  app "Cafezim.app"

  zap trash: [
    "~/Library/Preferences/com.cafezim.app.plist",
  ]
end
