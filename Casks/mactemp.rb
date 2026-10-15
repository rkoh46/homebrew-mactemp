cask "mactemp" do
  version "1.7.1"
  sha256 "SHA256_PLACEHOLDER"

  url "https://github.com/rkoh46/mactemp/releases/download/v#{version}/MacTemp.dmg",
      verified: "github.com/rkoh46/mactemp/"
  name "MacTemp"
  desc "Menu bar temperature, fan, and resource monitor for Apple Silicon Macs"
  homepage "https://github.com/rkoh46/mactemp"

  livecheck do
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MacTemp.app"

  uninstall quit: "local.mactemp"

end
