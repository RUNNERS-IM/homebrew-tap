cask "remote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.110704"
  sha256 arm:   "d6d44d6fb8bd5f5b99897413b08dde8fa5b1054003e62ed169d2093291b067b6",
         intel: "260547e115157bd2f253e081406735b552ffb20141c88b1bba0b8f6fc022c9a3"

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
