cask "qrscope" do
  version "1.0.0"
  sha256 "6d98ff24642587977eaf568357045d1c9ac3b9f595243d3b287cce6e0a19fba2"

  url "https://github.com/towanaruto/QRScope/releases/download/v#{version}/QRScope-#{version}.zip"
  name "QRScope"
  desc "Right-click any QR code on screen and open it with one click"
  homepage "https://github.com/towanaruto/QRScope"

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
