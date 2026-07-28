cask "mkvquickplay" do
  version "2.5.0"
  sha256 "ab427cbda8045ae2527b9126eca8847c9a44839ef1bf7d487942a03365ab99ac"

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
