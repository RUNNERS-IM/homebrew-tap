cask "monitor" do
  arch arm: "arm64", intel: "x64"

  version "2.6.110603"
  sha256 arm:   "f10fdcd56ee9c79a4b27a847d1c09978bc8ba74bba14a9f8bd6dbe0b4f5e97d1",
         intel: "e1d0d9b3d956d2a240173756530fdfc8126b88e192502e6100b52cb1e9e539a5"

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
