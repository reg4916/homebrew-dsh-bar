cask "dsh-bar" do
  version "0.4.1"
  sha256 "cc2e3e87bdc9a2edc51455da8d11d0d785410ac6b590e0644545d1f1ccc77582"

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
