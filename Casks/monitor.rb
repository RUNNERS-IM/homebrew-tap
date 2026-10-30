cask "monitor" do
  version "2.6.1030"
  sha256 "6622de26a0fd3185b9c2829429564e539033943173cf884e098dfb59e3da5082"

  url "https://github.com/RUNNERS-IM/monitor/releases/download/v#{version}/Monitor-#{version}.dmg"
  name "Monitor"
  desc "Menu bar monitor for CPU, memory, disk and what slows the computer down"
  homepage "https://github.com/RUNNERS-IM/monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Monitor.app"

  zap trash: [
    "~/Library/Application Support/im.runners.monitor",
    "~/Library/Caches/im.runners.monitor",
    "~/Library/WebKit/im.runners.monitor",
  ]
end
