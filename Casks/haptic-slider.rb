cask "haptic-slider" do
  version "1.0.0"
  sha256 "cc3d4d910aeedf3bd1c57c599c141d29d8150e235daf9f349412d6c8f517a0ff"

  url "https://github.com/Joe-Daniel29/haptic-slider-releases/releases/download/v#{version}/Haptic-Slider-Control-#{version}.dmg"
  name "Haptic Slider Control"
  desc "Trackpad haptic detents for native macOS sliders"
  homepage "https://github.com/Joe-Daniel29/haptic-slider-releases"

  depends_on macos: :sonoma

  app "Haptic Slider Control.app"

  zap trash: "~/Library/Preferences/mac.haptic-slider.plist"

  caveats <<~EOS
    Haptic Slider Control is not notarized. If macOS blocks the first
    launch, right-click the app -> Open, or install with:
      brew install --cask haptic-slider --no-quarantine

    On first run, grant Accessibility access from the menu-bar icon.
    Requires a Force Touch trackpad; a mouse feels nothing.
  EOS
end
