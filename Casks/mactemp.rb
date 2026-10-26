cask "mactemp" do
  version "1.7.5"
  sha256 "1b6d2dee2ec43de1c0e2e10960b657bbf2b55e1c2c1c88be2f918fd8231ed70a"

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
