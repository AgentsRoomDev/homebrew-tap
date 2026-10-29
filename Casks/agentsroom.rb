cask "agentsroom" do
  arch arm: "", intel: "-x64"

  version "1.241.0"
  sha256 arm:   "8bf9c6dc3f2395659b13660b356ee97f28401c15564bc25d304a059e15ced11d",
         intel: "d1fda539ea594102bc585c45ab614ea2008f28a126ad6cefd0b3d679d0329490"

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
