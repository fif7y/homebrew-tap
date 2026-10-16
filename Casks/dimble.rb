cask "dimble" do
  version "0.3.2-beta.7"
  sha256 "755a0e876878013d6a504faefdcdd92f53b6897ec8b6b332c37d85c55e9a1ee5"

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
