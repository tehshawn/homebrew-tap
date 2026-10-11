cask "mkvquickplay" do
  version "2.6.0"
  sha256 "5dc690cb15de307f9e576a9e949eb39e74221d0f28a4584d7540ade03e81ba62"

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
