cask "papelim" do
  version "0.1.4"
  sha256 "355c1ab948e2b3d4666bcd8701b255054c683ec9afc615f283f394d632fb3cc6"

  url "https://github.com/marcelotrevisani/papelim/releases/download/v#{version}/Papelim-v#{version}.dmg"
  name "Papelim"
  desc "Code snippet manager for macOS with syntax highlighting and multi-location sync"
  homepage "https://github.com/marcelotrevisani/papelim"

  app "Papelim.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Papelim.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.papelim.app.plist",
  ]
end
