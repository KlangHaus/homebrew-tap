# Homebrew cask for open mdHaus.
# Tap: brew tap klanghaus/tap
#
# After a GitHub release, update version + sha256:
#   ./scripts/update-cask-sha.sh v0.1.1

cask "open-mdhaus" do
  version "0.1.1"

  on_arm do
    sha256 "30496288d93b50520fe831639dd0a82528439dbdc14fd544f19987d1097d9d97"
    url "https://github.com/KlangHaus/mdhaus/releases/download/v#{version}/open.mdHaus_0.1.0_aarch64.dmg",
        verified: "github.com/KlangHaus/mdhaus/"
  end

  on_intel do
    sha256 "00d0c91778c3f030fb98ac0c573f010d41b422401402ae3b110c1ccc600af223"
    url "https://github.com/KlangHaus/mdhaus/releases/download/v#{version}/open.mdHaus_0.1.0_x64.dmg",
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
