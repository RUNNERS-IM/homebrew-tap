cask "draw" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111502"
  sha256 arm:   "6dd19811d9daefaca9b18fbf4ceb164b283a55308df1a770b6215078af802d69",
         intel: "2e1a9be926c3ab403fbb40e3b0ab966c9934d27e085b81f2bc47d4e4f570f465"

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
