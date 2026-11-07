cask "remote" do
  arch arm: "arm64", intel: "x64"

  version "2.6.110701"
  sha256 arm:   "0609a66ccff70dcdb9c694cf165a44756653063b5aed4438d77880d07e2865f1",
         intel: "124152e4f8cb9f4ee3fb152dd947bbf0663b89ce5f5aad4d4763c59d800341a8"

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
