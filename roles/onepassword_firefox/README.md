# onepassword_firefox
Automatically installs the 1Password Firefox browser extension

## Description
This role installs the 1Password desktop application with browser support and automatically installs the 1Password Firefox extension using Firefox's enterprise policy system. The extension will be automatically installed and enabled when Firefox is next launched.

## Requirements
- The `onepassword` role (automatically installed as a dependency)
- Mozilla Firefox browser

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## How It Works
The role uses Firefox's ExtensionSettings policy to automatically install the 1Password extension:
- **Ubuntu/Debian**: Creates policy file at `/etc/firefox/policies/policies.json`
- **macOS**: Creates policy file at `/Applications/Firefox.app/Contents/Resources/distribution/policies.json`

The extension will be automatically installed and enabled the next time Firefox is launched.

## Notes
- The extension is force-installed using enterprise policies
- Users cannot uninstall the extension (it's managed by policy)
- The native messaging host enables secure communication between the extension and 1Password
