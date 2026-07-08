cask "mkvquickplay" do
  version "2.4.0"
  sha256 "b4f346930f264fe3a818a1ccba1813e06f2979d23ea95dce0264dfce8b3505f9"

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
