cask "draw" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111602"
  sha256 arm:   "43ab07ae81643bfde513be55f9ec497b9ac88527cf18c9bede223a1689687b92",
         intel: "f393f5cc606059ae65a0db13675e8b8431d4c9856534d3b589ca7f04e1d37b1e"

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
