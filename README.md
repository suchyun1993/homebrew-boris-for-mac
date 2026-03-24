# homebrew-boris-for-mac

Homebrew tap for installing **BORIS_for_Mac** on Apple Silicon macOS.

## User Install

```bash
brew tap yourname/boris-for-mac
brew install --cask boris-for-mac
```

## Maintainer Release Flow

1. Build release app + DMG:

```bash
/Users/yun/Codex_projects/BORIS-stable-external/scripts/build_boris_for_mac_dmg.sh 2.0.0
```

2. Upload the generated DMG to GitHub Releases tag `v2.0.0` in your app repo.

Expected asset name:

`BORIS_for_Mac-2.0.0-arm64.dmg`

3. Compute sha256:

```bash
shasum -a 256 /Users/yun/Codex_projects/dist/BORIS_for_Mac-2.0.0-arm64.dmg
```

4. Update [`Casks/boris-for-mac.rb`](/Users/yun/Codex_projects/homebrew-boris-for-mac/Casks/boris-for-mac.rb):
```bash
/Users/yun/Codex_projects/BORIS-stable-external/scripts/update_homebrew_cask.sh 2.0.0 yourname BORIS_for_Mac
# or
/Users/yun/Codex_projects/BORIS-stable-external/scripts/update_homebrew_cask.sh 2.0.0 yourname/BORIS_for_Mac
```

- `version`
- `sha256`
- `url`
- `homepage`

5. Validate:

```bash
brew audit --cask --strict boris-for-mac
```

6. Push the tap repo changes.

## Upgrade / Uninstall

```bash
brew upgrade --cask boris-for-mac
brew uninstall --cask boris-for-mac
```
