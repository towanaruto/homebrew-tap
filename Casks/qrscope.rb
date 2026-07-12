cask "qrscope" do
  version "1.3.0"
  sha256 "64ca443ed6584a3edabdcfd7ed491c59d0b7b5ac5534dfa5bc1cf1e9c720904a"

  url "https://github.com/towanaruto/QRScope/releases/download/v#{version}/QRScope-#{version}.zip"
  name "QRScope"
  desc "Right-click any QR code on screen and open it with one click"
  homepage "https://github.com/towanaruto/QRScope"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "QRScope.app"

  zap trash: [
    "~/Library/Application Support/QRScope",
  ]

  caveats <<~EOS
    QRScope is ad-hoc signed (not notarized). If macOS blocks the app
    on first launch, remove the quarantine attribute:

      xattr -d com.apple.quarantine /Applications/QRScope.app

    QRScope needs Screen Recording permission to detect QR codes:

      System Settings → Privacy & Security → Screen Recording → enable QRScope

    Then restart QRScope.
  EOS
end
