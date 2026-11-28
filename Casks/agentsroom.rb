cask "agentsroom" do
  arch arm: "", intel: "-x64"

  version "1.296.0"
  sha256 arm:   "f0e790f4544dfba92559ae3719fcec01cb687db96e06d81c594e47102b54bdd3",
         intel: "7e79c579c072d0c4342cea84bf6b7ee23578bbe725fef9c8ad28c48b6452b0be"

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
