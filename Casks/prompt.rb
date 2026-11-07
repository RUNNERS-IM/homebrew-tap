cask "prompt" do
  version "2.6.110702"
  sha256 "bfc9df0bc6e125f294e5656906e1067feb4f95f9dfbbca1957240d4d78ee5066"

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
