cask "draw" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111701"
  sha256 arm:   "daa886a5a980109dd3c2e676964d1f8302255abd4cac7fd5e10444033e333940",
         intel: "cbc8e4e77e143a6a75e162f50aaf6a4a756957c533e95a39ee91756819126eff"

  url "https://github.com/RUNNERS-IM/draw/releases/download/v#{version}/Draw-#{version}-mac-#{arch}.dmg"
  name "Draw"
  desc "Screen annotation tool for presentations and screen sharing"
  homepage "https://github.com/RUNNERS-IM/draw"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Draw.app"

  zap trash: [
    "~/Library/Application Support/Draw",
    "~/Library/Application Support/im.runners.draw",
    "~/Library/Caches/im.runners.draw",
    "~/Library/Caches/im.runners.draw.ShipIt",
    "~/Library/Logs/Draw",
    "~/Library/Preferences/im.runners.draw.plist",
    "~/Library/Saved Application State/im.runners.draw.savedState",
    "~/Library/WebKit/im.runners.draw",
  ]
end
