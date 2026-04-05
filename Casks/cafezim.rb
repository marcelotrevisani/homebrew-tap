cask "cafezim" do
  version "1.2.2"
  sha256 "5fdd55eff9714e672a471002418aac5cdf44cdd1a2786c6b4d16012953dcba39"

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
