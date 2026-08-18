cask "batteryglass" do
  version "0.1.0"
  sha256 "07b2775de7b16b9147f996d911536c4ad4e0e9fb4e6ac8b4e095f7ca0c246533"

  url "https://github.com/keepkeen/BatteryGlass/releases/download/v#{version}/BatteryGlass-#{version}-macOS.zip"
  name "BatteryGlass"
  desc "Show Apple device battery levels in the menu bar and desktop widgets"
  homepage "https://github.com/keepkeen/BatteryGlass"

  depends_on macos: :tahoe

  app "BatteryGlass.app"

  zap trash: [
    "~/Library/Group Containers/group.com.liuliming.BatteryGlass",
    "~/Library/Preferences/com.liuliming.BatteryGlass.plist",
  ]

  caveats <<~EOS
    This preview is ad-hoc signed and is not Apple-notarized yet.
    Before first launch, clear its quarantine attribute with:
      xattr -dr com.apple.quarantine /Applications/BatteryGlass.app
    Alternatively, build the app from source.
  EOS
end
