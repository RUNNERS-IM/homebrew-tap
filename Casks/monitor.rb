cask "monitor" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111602"
  sha256 arm:   "a1784a8b00cbd2e882cb7060bdc46648b347828d638e93f7bbd310539547960b",
         intel: "4e3b3619d6e2e9c954a42eef094be96a07c4b1d074ec2dce9718c7895ca17821"

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
