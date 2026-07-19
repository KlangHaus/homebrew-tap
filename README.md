# KlangHaus Homebrew Tap

Install [open mdHaus](https://github.com/KlangHaus/mdhaus):

```bash
brew tap klanghaus/tap
brew install --cask open-mdhaus
```

Upgrade:

```bash
brew upgrade --cask open-mdhaus
```

## Maintainer notes

This directory is the source for the `KlangHaus/homebrew-tap` repository. After each app release:

1. Copy or sync `Casks/open-mdhaus.rb` from the mdhaus repo.
2. Run `../scripts/update-cask-sha.sh vX.Y.Z` from the mdhaus repo (or paste checksums from the GitHub Actions release summary).
3. Commit and push to `homebrew-tap`.
