cask "pelmet" do
  version "0.2.39"
  sha256 "300606b5f18c262f81c89d33713c2b15355304e1161d5f52d751a62d6aca2b9a"

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
