cask "dsh-bar" do
  version "0.2.0"
  sha256 "873cfaa73ecd09f9dea371c9ce8f6217a90e9d43befb263d1a3a698545d93030"

  url "https://github.com/reg4916/dsh-bar/releases/download/v#{version}/DSHBar-#{version}-macos-universal.zip"
  name "DSH Bar"
  desc "Animated menu bar companion for DeepSeek Harness"
  homepage "https://github.com/reg4916/dsh-bar"

  app "DSHBar.app"

  caveats <<~EOS
    DSH Bar is ad-hoc signed. On first launch use right-click -> Open, or run:
      xattr -dr com.apple.quarantine /Applications/DSHBar.app
    macOS does not allow notifications for unsigned builds; DSH Bar shows a
    floating approval card instead.
  EOS
end
