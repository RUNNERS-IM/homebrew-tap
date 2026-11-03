cask "prompt" do
  version "2.6.110301"
  sha256 "5ad0ee23cfa6637afe4b6fe0466b2aebb20adea6a31fad06fa8051599e4f7359"

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
