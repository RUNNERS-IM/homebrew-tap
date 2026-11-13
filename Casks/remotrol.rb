cask "remotrol" do
  arch arm: "arm64", intel: "x64"

  version "2.6.111302"
  sha256 arm:   "f4c7bd464b84ec21af6db91332647ee5c4a4ca35244f121697dcc190de36798a",
         intel: "3d1438b16b4946cb671105534f35254ffa112b4a296ba007bffeb3c5acc3986b"

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
