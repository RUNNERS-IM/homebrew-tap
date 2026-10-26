cask "split" do
  version "1.0"
  sha256 "3f7658a7e781763e9b9000186bf22460f32aa02263be039738cf30222affd4d3"

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
