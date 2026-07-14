cask "qrscope" do
  version "1.5.1"
  sha256 "494d6bc75516fa3b7f093e324c8ca9e9d1efd1558b4ea6f54dcec2760fd0e8af"

  url "https://github.com/towanaruto/QRScope/releases/download/v#{version}/QRScope-#{version}.zip"
  name "QRScope"
  desc "Right-click any QR code on screen and open it with one click"
  homepage "https://github.com/towanaruto/QRScope"

  auto_updates true
  depends_on macos: :sonoma

  app "QRScope.app"

  zap trash: "~/Library/Application Support/QRScope"

  caveats <<~EOS
    QRScope is ad-hoc signed (not notarized). If macOS blocks the app
    on first launch, remove the quarantine attribute:

      xattr -d com.apple.quarantine /Applications/QRScope.app

    QRScope needs Screen Recording permission to detect QR codes:

      System Settings → Privacy & Security → Screen Recording → enable QRScope

    Then restart QRScope.
  EOS
end
