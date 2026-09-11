cask "overcaption" do
  version "0.4.2"
  sha256 "8d91b9c03c0fa04f5d9efca7b5c0cab9363a426915f5ccd6aaa4774c9f8bfd96"

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
