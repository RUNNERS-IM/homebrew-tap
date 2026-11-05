cask "remote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.110601"
  sha256 arm:   "b812050b494054aedd919788e8c4df14a1f0dec05368b57aac319b856dfa885d",
         intel: "284e02d56a178f3fe546191759c2851655fa29bf268db9b85f1054e60837b9a9"

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
