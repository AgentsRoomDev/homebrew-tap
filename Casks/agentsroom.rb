cask "agentsroom" do
  arch arm: "", intel: "-x64"

  version "1.289.0"
  sha256 arm:   "03e776cc70144f040e3a09e443296b24ab6d0c53d60c5d742a6452be9be2abf1",
         intel: "473eaa9977401cefd4f11cd1c0042b0e9452d6ed82a291dbb3a07280d468a890"

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
