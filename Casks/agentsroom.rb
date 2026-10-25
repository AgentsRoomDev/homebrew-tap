cask "agentsroom" do
  arch arm: "", intel: "-x64"

  version "1.233.0"
  sha256 arm:   "705bd6898d81c83dc990ca87917a32a91ba60e491c61ba1d348c9d82302113fb",
         intel: "e7c4a8fda4fcef2abc5bbe8a15e846926d9ca5482be84b33d2a924031a75422d"

  url "https://agentsroom.dev/downloads/AgentsRoom-#{version}#{arch}.dmg"
  name "AgentsRoom"
  desc "Visual command center to run and coordinate multiple AI coding agents"
  homepage "https://agentsroom.dev/"

  livecheck do
    url "https://agentsroom.dev/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "AgentsRoom.app"

  zap trash: [
    "~/.agentsroom",
    "~/Library/Application Support/desktop",
    "~/Library/Caches/com.agentsroom.desktop",
    "~/Library/Caches/com.agentsroom.desktop.ShipIt",
    "~/Library/HTTPStorages/com.agentsroom.desktop",
    "~/Library/Preferences/com.agentsroom.desktop.plist",
    "~/Library/Saved Application State/com.agentsroom.desktop.savedState",
  ]
end
