cask "split" do
  version "1.2"
  sha256 "7e96aa8446daf652039c8b6d60f6f307605de992a1489222c0150665d1eb7ca6"

  url "https://github.com/RUNNERS-IM/split/releases/download/v#{version}/Split-#{version}.dmg"
  name "Split"
  desc "Move and resize windows with keyboard shortcuts (successor of Spectacle)"
  homepage "https://runners.im/tools/split"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Split.app"

  zap trash: [
    "~/Library/Application Support/Split",
    "~/Library/Caches/im.runners.Split",
    "~/Library/HTTPStorages/im.runners.Split",
    "~/Library/Preferences/im.runners.Split.plist",
  ]
end
