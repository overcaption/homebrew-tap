cask "overcaption" do
  version "0.4.3"
  sha256 "437fb851e2b76039cbd1dd2eec9927a75a7dbd07d997509e305ebf403cbcacd1"

  url "https://github.com/overcaption/overcaption/releases/download/v#{version}/Overcaption-#{version}-mac-arm64.dmg"
  name "Overcaption"
  desc "Offline subtitle studio: on-device transcription, editing, translation and burn-in"
  homepage "https://overcaption.com/"

  livecheck do
    url "https://assets.overcaption.com/releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64

  app "Overcaption.app"

  zap trash: [
    "~/Library/Application Support/Overcaption",
    "~/Library/Caches/app.overcaption.desktop",
    "~/Library/Caches/app.overcaption.desktop.ShipIt",
    "~/Library/Logs/Overcaption",
    "~/Library/Preferences/app.overcaption.desktop.plist",
    "~/Library/Saved Application State/app.overcaption.desktop.savedState",
  ]
end
