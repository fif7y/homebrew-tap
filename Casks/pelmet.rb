cask "pelmet" do
  version "0.2.6"
  sha256 "387aee483f3147d8b5771f7966fc8ffb198bc55fca1d4d4fb21f7b2032b50e09"

  url "https://github.com/fif7y/pelmet/releases/download/v#{version}/Pelmet-#{version}.dmg"
  name "Pelmet"
  desc "Calm menu bar — hide, reveal, and reorder menu bar items on macOS 27"
  homepage "https://github.com/fif7y/pelmet"

  livecheck do
    url "https://fif7y.github.io/pelmet/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Pelmet.app"

  zap trash: [
    "~/Library/Preferences/app.fif7y.Pelmet.plist",
    "~/Library/Preferences/app.fif7y.Nook.plist",
    "~/Library/Logs/Pelmet",
    "~/Library/Caches/app.fif7y.Pelmet",
  ]
end
