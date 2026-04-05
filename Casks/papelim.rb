cask "papelim" do
  version "0.1.0"
  sha256 "c59df2fb7192d25a51a6945a4988c7556bf7ec8772480dcfd023c96a0e1ad294"

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
