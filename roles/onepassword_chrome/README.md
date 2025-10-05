# onepassword_chrome
Automatically installs the 1Password Chrome browser extension

## Description
This role installs the 1Password desktop application with browser support and automatically installs the 1Password Chrome extension using Chrome's enterprise policy system. The extension will be automatically installed and enabled when Chrome is next launched, but users can uninstall it if desired.

## Requirements
- The `onepassword` role (automatically installed as a dependency)
- Google Chrome or Chromium browser

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## How It Works
The role uses Chrome's ExtensionSettings policy with `normal_installed` mode to automatically install the 1Password extension:
- **Ubuntu/Debian**: Creates policy file at `/etc/opt/chrome/policies/managed/1password.json`
- **macOS**: Creates policy file at `/Library/Managed Preferences/com.google.Chrome.plist`

The extension will be automatically installed the next time Chrome is launched, and users can uninstall it if they wish.

## Notes
- The extension is automatically installed using enterprise policies
- Users can uninstall the extension if desired (uses `normal_installed` mode)
- The native messaging host enables secure communication between the extension and 1Password
