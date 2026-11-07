cask "prompt" do
  version "2.6.110703"
  sha256 "65ea00fcbc6b8804acc1316597a8b8c1d6c9500cee1a9af7481ce76f2659d7ba"

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
