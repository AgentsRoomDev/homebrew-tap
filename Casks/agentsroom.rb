cask "agentsroom" do
  arch arm: "", intel: "-x64"

  version "1.288.1"
  sha256 arm:   "1b5a81a39158624f2c7bb647b60d259d23b6b33ecc0fe3b22f2aeb262eed2341",
         intel: "d07d6896c87942cab5e392432d7306a417e69bbf575b84f3a6845756c3a0b943"

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
