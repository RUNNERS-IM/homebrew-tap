cask "split" do
  version "2.6.1105"
  sha256 "ff8be2565b0f0d221b9ac9a6a4c1995f98b40ecb3c905034e7d142b1015e137a"

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
