cask "cafezim" do
  version "1.3.0"
  sha256 "52f7759c6392390d85c831829f6f9cb1cf92bd6c293db21ef6e2aa750543ec70"

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
