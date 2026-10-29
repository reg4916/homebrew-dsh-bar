cask "dsh-bar" do
  version "0.2.2"
  sha256 "2f8ffaae4bbca93082a429a32ad0c513de14233f6cec132561ac8fe5445e2e43"

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
