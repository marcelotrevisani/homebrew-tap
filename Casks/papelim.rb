cask "papelim" do
  version "0.1.3"
  sha256 "8b285e5045725b79f11f02fad70d2af79a99abc160e7717e92cb541f636ef9a9"

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
