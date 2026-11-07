cask "dimble" do
  version "0.3.4"
  sha256 "badf956e66a3f247928a02e7c141bf221cf497255ea2db5aaad1545039ed577e"

  url "https://github.com/fif7y/dimble/releases/download/v#{version}/Dimble-#{version}.dmg"
  name "Dimble"
  desc "Calm menu bar. Hide, reveal and reorder menu bar items"
  homepage "https://dimble.fif7y.com/"

  livecheck do
    url "https://fif7y.github.io/updates/pliss/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Dimble.app"

  zap trash: [
    "~/Library/Caches/app.fif7y.Pelmet",
    "~/Library/Logs/Dimble",
    "~/Library/Logs/Pelmet",
    "~/Library/Logs/Pliss",
    "~/Library/Preferences/app.fif7y.Nook.plist",
    "~/Library/Preferences/app.fif7y.Pelmet.items.alwaysHidden.plist",
    "~/Library/Preferences/app.fif7y.Pelmet.items.hidden.plist",
    "~/Library/Preferences/app.fif7y.Pelmet.plist",
  ]
end
