cask "overcaption" do
  version "0.3.5"
  sha256 "d8ce14551a066f2bf900cf88f2b2b35f02ba763402d64e7408ec6ce14ea31d18"

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
