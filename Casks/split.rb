cask "split" do
  version "2.6.1030.7"
  sha256 "fae9a272920f03dc2447d1aef1ccb04f70bcb30010c7634df825730fac86b573"

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
