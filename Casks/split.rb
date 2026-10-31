cask "split" do
  version "2.6.1101"
  sha256 "5982117c2c6dfed71c138a8a05d7c6c8b31437cadc8aeca5cc28c0e5d1a3e397"

  url "https://github.com/RUNNERS-IM/split/releases/download/v#{version}/Split-#{version}.dmg"
  name "Split"
  desc "Move and resize windows with keyboard shortcuts"
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
