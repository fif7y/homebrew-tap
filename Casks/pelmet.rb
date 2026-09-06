cask "pelmet" do
  version "0.2.8"
  sha256 "d0522fc25c73dbb475f138e4f5c14ff6bfc5ec43a67ff8cf7de303cd704d8bb6"

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
