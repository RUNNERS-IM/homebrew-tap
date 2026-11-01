cask "remote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1102"
  sha256 arm:   "b2c5053dd6c84d60b2ed1bdb4761d9552d21f92dff2b064d90972b81c59c677e",
         intel: "e5c8dd40da529c3e81199045acd94d19e3c7c272d98c6419cff37f3e5aa5172a"

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
