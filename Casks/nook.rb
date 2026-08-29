# Deprecated: the app was renamed to Pelmet — use fif7y/tap/pelmet.
# Release assets live on the renamed repo (fif7y/pelmet); the old
# github.com/fif7y/nook path is a stub that only serves the legacy appcast.
cask "nook" do
  version "0.1.4"
  sha256 "f5419e2cb0beb4f6a98efadc2cb43fb5adf46754edd0e91f35bccb751ae84859"

  url "https://github.com/fif7y/pelmet/releases/download/v#{version}/Nook-#{version}.dmg"
  name "Nook"
  desc "Calm menu bar — renamed to Pelmet (install fif7y/tap/pelmet)"
  homepage "https://github.com/fif7y/pelmet"

  deprecate! date: "2026-08-29", because: "it was renamed to fif7y/tap/pelmet"

  livecheck do
    url "https://fif7y.github.io/nook/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Nook.app"

  zap trash: [
    "~/Library/Preferences/app.fif7y.Nook.plist",
    "~/Library/Logs/Nook",
    "~/Library/Caches/app.fif7y.Nook",
  ]
end
