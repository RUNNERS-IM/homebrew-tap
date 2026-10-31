cask "prompt" do
  version "2.6.103101"
  sha256 "83730330f0e089ac1a2f0266d704ab0fffe976df81b7804dc5a2694db1a41224"

  url "https://github.com/RUNNERS-IM/prompt/releases/download/v#{version}/prompt-macos-arm64.dmg"
  name "Prompt"
  desc "Terminal that runs many Claude sessions in one window, grouped by project"
  homepage "https://github.com/RUNNERS-IM/prompt"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Prompt.app"
end
