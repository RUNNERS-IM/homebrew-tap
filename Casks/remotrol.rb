cask "remotrol" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111502"
  sha256 arm:   "d100f2ce3fbfff966c3633bed104443351dc169e523834db6ee909eed7176c25",
         intel: "cd2e931b0bacf91d09a181e928460e6bb3912ef67a0a647905eef0ee0684347e"

  url "https://github.com/RUNNERS-IM/remotrol/releases/download/v#{version}/Remotrol-#{version}-mac-#{arch}.dmg"
  name "Remotrol"
  desc "See and click the screens of other computers, from the menu bar"
  homepage "https://github.com/RUNNERS-IM/remotrol"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Remotrol.app"

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
