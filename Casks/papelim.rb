cask "papelim" do
  version "0.1.1"
  sha256 "b060b3ec4ced285c80d5951a51af6337bed79607c86322a8cea1365795aee693"

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
