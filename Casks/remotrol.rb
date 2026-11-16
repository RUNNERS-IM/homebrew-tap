cask "remotrol" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111602"
  sha256 arm:   "c7da2492869b2278b557d0670ea8ba5cda1af8b4296b26b6b94258eea9377a74",
         intel: "bf71db833cba57e39f581d7923f65f7348886a2034c58e5cdddf7e8ce4d201f1"

  url "https://github.com/RUNNERS-IM/remotrol/releases/download/v#{version}/Remotrol-#{version}-mac-#{arch}.dmg"
  name "Remotrol"
  desc "See and click the screens of other computers, from the menu bar"
  homepage "https://github.com/RUNNERS-IM/remotrol"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Remotrol.app"

  zap trash: [
    "~/Library/Application Support/Remote",
    "~/Library/Application Support/im.runners.remote",
    "~/Library/Caches/im.runners.remote",
    "~/Library/Caches/im.runners.remote.ShipIt",
    "~/Library/Logs/Remote",
    "~/Library/Preferences/im.runners.remote.plist",
    "~/Library/Saved Application State/im.runners.remote.savedState",
    "~/Library/WebKit/im.runners.remote",
  ]
end
