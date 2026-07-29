cask "overcaption" do
  version "0.3.2"
  sha256 "4f9872c2045aec371837c97305649e0662f35e67ddc0750b1adb9fbb1d87d05b"

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
