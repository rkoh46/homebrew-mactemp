cask "mactemp" do
  version "1.7.1"
  sha256 "2e2b25f6faa83094247cd0f9dd2d49cea86ff4037e25e67c22f2bae152c88825"

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
