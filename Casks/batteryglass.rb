cask "batteryglass" do
  version "0.1.1"
  sha256 "bc6e364eef8d92f6b89c414bdd05324180f2ef25db1739a73433842f2c75d1c6"

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
