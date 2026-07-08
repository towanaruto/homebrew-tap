# homebrew-tap

Homebrew tap for [towanaruto](https://github.com/towanaruto)'s tools.

## Usage

```bash
brew tap towanaruto/tap
brew trust towanaruto/tap   # Homebrew 6+
```

## Available casks

| Cask | Description |
|------|-------------|
| [`qrscope`](https://github.com/towanaruto/QRScope) | Right-click any QR code on screen and open it with one click |

```bash
brew install --cask qrscope
xattr -d com.apple.quarantine /Applications/QRScope.app  # ad-hoc signed, not notarized
```
