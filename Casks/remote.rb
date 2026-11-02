cask "remote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1102.2"
  sha256 arm:   "20f604248e75d8272cc112fcfff1871c3e21f330f8de8279b40997fb86c227a1",
         intel: "591639951e58679b7b54e7383d844aacb00802aef00d574239eb5bdb13accc06"

  url "https://github.com/RUNNERS-IM/remote/releases/download/v#{version}/Remote-#{version}-mac-#{arch}.dmg"
  name "Remote"
  desc "See and click the screens of other computers, from the menu bar"
  homepage "https://github.com/RUNNERS-IM/remote"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Remote.app"

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
