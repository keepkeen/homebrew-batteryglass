# Homebrew BatteryGlass

Homebrew distribution for [BatteryGlass](https://github.com/keepkeen/BatteryGlass), a native macOS menu bar utility and desktop widget for Apple device battery levels.

## Install

The current preview is ad-hoc signed rather than Apple-notarized, so installation requires an explicit one-time Gatekeeper bypass:

```sh
brew install --cask keepkeen/batteryglass/batteryglass
xattr -dr com.apple.quarantine /Applications/BatteryGlass.app
open -a BatteryGlass
```

If you do not want to clear quarantine for the downloaded app, build it from source. This requirement will be removed after releases use a Developer ID signature and Apple notarization.

## Update and uninstall

```sh
brew upgrade --cask keepkeen/batteryglass/batteryglass
brew uninstall --cask batteryglass
```

## Requirements

- macOS 26 or later
- Homebrew 6 or later
