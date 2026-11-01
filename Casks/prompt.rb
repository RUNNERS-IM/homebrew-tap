cask "prompt" do
  version "2.6.110204"
  sha256 "cacd3f31e7045e20ca1d1ccc7798872acafdb05b07e2a30e74fee38ae489ee71"

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
