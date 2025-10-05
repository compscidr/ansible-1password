# onepassword_chrome
Installs 1Password Chrome browser extension support

## Description
This role ensures that the 1Password desktop application is installed with browser support enabled for Google Chrome. The desktop application provides the native messaging host that allows the Chrome browser extension to communicate securely with 1Password.

## Requirements
- The `onepassword` role (automatically installed as a dependency)
- Google Chrome browser must be installed separately

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## Installation
After running this role, users can install the 1Password browser extension from the Chrome Web Store:
https://chrome.google.com/webstore/detail/1password/aeblfdkhhhdcdjpifhhbdiojplfjncoa

## Notes
- This role installs the desktop application with browser support
- The actual Chrome extension must be installed by users from the Chrome Web Store
- The native messaging host enables secure communication between the extension and 1Password
