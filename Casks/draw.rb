cask "draw" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111501"
  sha256 arm:   "ed3471c9aff5902b6687d1209e412fd2e75adbe897a4fd975ab1cc9124a74f75",
         intel: "f4f7e69816f7c79f917e7c7625365ed3d1fa4b5a2cae4df35b19d70465e4fe12"

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
