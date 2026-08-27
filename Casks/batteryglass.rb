cask "batteryglass" do
  version "0.2.0"
  sha256 "48ad476e5f99536b2ab59c788dbbf36f1ebdc3cff73da5c281a11d061f815c82"

  url "https://github.com/keepkeen/BatteryGlass/releases/download/v#{version}/BatteryGlass-#{version}-macOS.zip"
  name "BatteryGlass"
  desc "Show Apple device battery levels in the menu bar and desktop widgets"
  homepage "https://github.com/keepkeen/BatteryGlass"

  depends_on macos: :tahoe

  app "BatteryGlass.app"

  zap trash: [
    "~/Library/Containers/com.liuliming.BatteryGlass.Widget/Data/Library/Application Support/BatteryGlass",
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
