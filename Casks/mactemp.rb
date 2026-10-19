cask "mactemp" do
  version "1.7.3"
  sha256 "6024a15cba3e0cfb63ed81d75e9bc6e844435bcbe031da05bdf4b0264b5a51da"

  url "https://github.com/rkoh46/mactemp/releases/download/v#{version}/MacTemp.dmg"
  name "MacTemp"
  desc "Menu bar temperature, fan, and resource monitor for Apple Silicon Macs"
  homepage "https://github.com/rkoh46/mactemp"

  livecheck do
    url "https://github.com/rkoh46/mactemp/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacTemp.app"

  uninstall quit: "local.mactemp",
            launchctl: ["system/local.mactemp.helper"],
            trash: ["/Library/LaunchDaemons/local.mactemp.helper.plist",
                    "/Library/PrivilegedHelperTools/local.mactemp.helper"]

  zap trash: "~/Library/Preferences/local.mactemp.plist"

end
