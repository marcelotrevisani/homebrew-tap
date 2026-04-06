cask "papelim" do
  version "0.1.2"
  sha256 "4fdd7f55abd6d4ad9490b076dea71eaa930371bf76e206c5f5b4023cb14e20a8"

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
