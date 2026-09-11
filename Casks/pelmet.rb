cask "pelmet" do
  version "0.2.22"
  sha256 "0d456ac5addc55fdbe1e76f3d68914f31b8a8235a027f540b48d9fe42dade083"

  url "https://github.com/fif7y/pelmet/releases/download/v#{version}/Pelmet-#{version}.dmg"
  name "Pelmet"
  desc "Calm menu bar. Hide, reveal and reorder menu bar items on macOS 27"
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
