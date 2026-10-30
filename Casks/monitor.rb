cask "monitor" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1030.4"
  sha256 arm:   "074be987f68196c171715188a1b57572ceb1f713a1b71db54b8957778dd034e2",
         intel: "f5a4322f54d84447f6ebefb6d5bd923aa51fd365e0d8bb8099d22a4e97f450bb"

  url "https://github.com/RUNNERS-IM/monitor/releases/download/v#{version}/Monitor-#{version}-mac-#{arch}.dmg"
  name "Monitor"
  desc "Menu bar monitor for CPU, memory, disk and what slows the computer down"
  homepage "https://github.com/RUNNERS-IM/monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Monitor.app"

  zap trash: [
    "~/Library/Application Support/Monitor",
    "~/Library/Application Support/im.runners.monitor",
    "~/Library/Caches/im.runners.monitor",
    "~/Library/Caches/im.runners.monitor.ShipIt",
    "~/Library/Logs/Monitor",
    "~/Library/Preferences/im.runners.monitor.plist",
    "~/Library/Saved Application State/im.runners.monitor.savedState",
    "~/Library/WebKit/im.runners.monitor",
  ]
end
