cask "cafezim" do
  version "1.3.1"
  sha256 "721026714a6537fbad93aa51eb8df907741b5f135464b10d71214d0b6a33756f"

  url "https://github.com/marcelotrevisani/cafezim/releases/download/v#{version}/Cafezim-v#{version}.dmg"
  name "Cafezim"
  desc "Lightweight menu bar app that keeps your Mac awake"
  homepage "https://github.com/marcelotrevisani/cafezim"

  app "Cafezim.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Cafezim.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.cafezim.app.plist",
  ]
end
