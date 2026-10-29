cask "dsh-bar" do
  version "0.2.1"
  sha256 "08122376378cf63671b82d0aee4cabf286c7eb8ff81bb0e65160b8f80b3f61c2"

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
