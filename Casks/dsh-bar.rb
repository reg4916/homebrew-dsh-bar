cask "dsh-bar" do
  version "0.3.0"
  sha256 "73d45e3964f17a916bb7d9c98f95330705fdcc81a4c07a4fe7490e4525fd6d12"

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
