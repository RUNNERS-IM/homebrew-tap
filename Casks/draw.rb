cask "draw" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111401"
  sha256 arm:   "294952375c116997e813569feebed4d2e8940947ac82e62afbd9f6a47a73354f",
         intel: "170051cffcadeed8b8d49240c3c2f11d13b86a8148fb1ea64370473865c192ee"

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
