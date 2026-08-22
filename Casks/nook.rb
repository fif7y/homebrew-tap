# Cask for a fif7y/homebrew-tap repo (Casks/nook.rb) — ready to publish.
cask "nook" do
  version "0.1.4"
  sha256 "f5419e2cb0beb4f6a98efadc2cb43fb5adf46754edd0e91f35bccb751ae84859"

  url "https://github.com/fif7y/nook/releases/download/v#{version}/Nook-#{version}.dmg"
  name "Nook"
  desc "Calm menu bar — hide, reveal, and reorder menu bar items on macOS 27"
  homepage "https://github.com/fif7y/nook"

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
