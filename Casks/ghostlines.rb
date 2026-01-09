cask "ghostlines" do
  version "0.1.0"
  sha256 "PLACEHOLDER_SHA256"

  url "https://github.com/systmms/ghostlines/releases/download/v#{version}/Ghostlines_#{version}_universal.dmg"
  name "Ghostlines"
  desc "Secure LAN-only terminal access from mobile devices"
  homepage "https://github.com/systmms/ghostlines"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Ghostlines.app"

  zap trash: [
    "~/Library/Application Support/com.systmms.ghostlines",
    "~/Library/Preferences/com.systmms.ghostlines.plist",
    "~/Library/Caches/com.systmms.ghostlines"
  ]
end
