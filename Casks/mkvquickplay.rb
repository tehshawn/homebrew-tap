cask "mkvquickplay" do
  version "2.4.1"
  sha256 "12e50467c962e1ff90d1a11b4bf2e3e267b1b97940982af5430c5210b734bd14"

  url "https://github.com/tehshawn/mkvquickplay/releases/download/v#{version}/MKVQuickPlay-macOS-v#{version}.zip",
      verified: "github.com/tehshawn/mkvquickplay/"
  name "MKV QuickPlay"
  desc "Menu bar app for quick video preview using mpv"
  homepage "https://github.com/tehshawn/mkvquickplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on formula: "mpv"
  depends_on macos: :ventura

  app "MKVQuickPlay.app"

  zap trash: "~/Library/Preferences/com.mkvquickplay.app.plist"
end
