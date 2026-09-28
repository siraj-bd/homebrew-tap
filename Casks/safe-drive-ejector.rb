cask "safe-drive-ejector" do
  version "1.0.0"
  sha256 "47c5d6841e60636f878f018aede258394c12fd526cf6ce7898235abae6ee662e"

  url "https://github.com/siraj-bd/Safe-Drive-Ejector-macOS/releases/download/v#{version}/SafeDriveEjector-#{version}-macOS-Universal.dmg"
  name "Safe Drive Ejector"
  desc "Safely eject external drives, unmount volumes cleanly, and inspect blocking processes on macOS"
  homepage "https://github.com/siraj-bd/Safe-Drive-Ejector-macOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Safe Drive Ejector.app"

  zap trash: [
    "~/Library/Application Support/SafeDriveEjector",
    "~/Library/Preferences/com.safedriveejector.plist",
    "~/Library/Logs/SafeDriveEjector",
  ]
end
