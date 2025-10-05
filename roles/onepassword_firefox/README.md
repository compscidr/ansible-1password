# onepassword_firefox
Installs 1Password Firefox browser extension support

## Description
This role ensures that the 1Password desktop application is installed with browser support enabled for Mozilla Firefox. The desktop application provides the native messaging host that allows the Firefox browser extension to communicate securely with 1Password.

## Requirements
- The `onepassword` role (automatically installed as a dependency)
- Mozilla Firefox browser must be installed separately

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## Installation
After running this role, users can install the 1Password browser extension from Mozilla Add-ons:
https://addons.mozilla.org/en-US/firefox/addon/1password-x-password-manager/

## Notes
- This role installs the desktop application with browser support
- The actual Firefox extension must be installed by users from Mozilla Add-ons
- The native messaging host enables secure communication between the extension and 1Password
