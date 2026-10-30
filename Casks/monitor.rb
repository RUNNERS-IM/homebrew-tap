cask "monitor" do
  version "2.6.1030.2"
  sha256 "0d982bd402b2112a479d53968733dcadb437b378fe101c0d06ab00ef16952640"

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
