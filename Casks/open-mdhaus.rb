# Homebrew cask for open mdHaus.
# Tap: brew tap klanghaus/tap https://github.com/KlangHaus/homebrew-tap
#
# After a GitHub release, update version + sha256 from the workflow summary
# or run: ./scripts/update-cask-sha.sh v0.1.0

cask "open-mdhaus" do
  version "0.1.0"

  on_arm do
    sha256 "REPLACE_WITH_AARCH64_SHA256"
    url "https://github.com/KlangHaus/mdhaus/releases/download/v#{version}/open%20mdHaus_#{version}_aarch64.dmg",
        verified: "github.com/KlangHaus/mdhaus/"
  end

  on_intel do
    sha256 "REPLACE_WITH_X64_SHA256"
    url "https://github.com/KlangHaus/mdhaus/releases/download/v#{version}/open%20mdHaus_#{version}_x64.dmg",
        verified: "github.com/KlangHaus/mdhaus/"
  end

  name "open mdHaus"
  desc "Open markdown editor with live split-pane preview"
  homepage "https://github.com/KlangHaus/mdhaus"

  app "open mdHaus.app"

  zap trash: [
    "~/Library/Application Support/com.klanghaus.open-mdhaus",
    "~/Library/Caches/com.klanghaus.open-mdhaus",
    "~/Library/Preferences/com.klanghaus.open-mdhaus.plist",
    "~/Library/Saved Application State/com.klanghaus.open-mdhaus.savedState",
  ]
end
