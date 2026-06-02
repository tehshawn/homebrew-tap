cask "mkvquickplay" do
  version "2.3.0"
  sha256 "7fdff368b5b87f566c31b74d155710ab4001b7c56d33e8ec6014dcdc4ece6f28"

  url "https://github.com/tehshawn/mkvquickplay/releases/download/v#{version}/MKVQuickPlay-macOS-v#{version}.zip",
      verified: "github.com/tehshawn/mkvquickplay/"
  name "MKV QuickPlay"
  desc "Menu bar app for quick video preview using mpv"
  homepage "https://github.com/tehshawn/mkvquickplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "mpv"
  depends_on macos: :ventura

  app "MKVQuickPlay.app"

  zap trash: "~/Library/Preferences/com.mkvquickplay.app.plist"
end
