cask "monitor" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111502"
  sha256 arm:   "5f1cecdb5582d216d00531e62eca5b34b6ce6461a868bb7aa9919d4a11e0a6ba",
         intel: "c1c3c07be2c0af260caf11244377f14a03af43c31fe9128cd753f3cf7206b3bc"

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
