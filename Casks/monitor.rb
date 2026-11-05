cask "monitor" do
  arch arm: "arm64", intel: "x64"

  version "2.6.110502"
  sha256 arm:   "7494c1c6602c838ab6b73cbe6a0a66d8ee42cbba289cbeee5455149d02a8ea51",
         intel: "a03e992bf531ccc154ccccb5145ded36f3cb485ea24d78e4ae5963164713b5ca"

  url "https://github.com/RUNNERS-IM/monitor/releases/download/v#{version}/Monitor-#{version}-mac-#{arch}.dmg"
  name "Monitor"
  desc "Menu bar monitor for CPU, memory, disk and what slows the computer down"
  homepage "https://github.com/RUNNERS-IM/monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
