# onepassword_safari
Installs 1Password Safari browser extension support

## Description
This role ensures that the 1Password desktop application is installed with Safari extension support. On macOS, the Safari extension is bundled with the 1Password desktop application.

## Requirements
- The `onepassword` role (automatically installed as a dependency)
- macOS operating system (Safari is only available on macOS)

## Supported Platforms
- macOS (via Homebrew)
- Ubuntu (no-op - Safari is not available on Ubuntu)

## Enabling the Safari Extension
After running this role on macOS:
1. Open Safari
2. Go to Safari > Settings > Extensions
3. Enable the 1Password extension

## Notes
- This role installs the 1Password desktop application which includes the Safari extension
- Safari is only available on macOS, so this role has no effect on Ubuntu/Debian systems
- The Safari extension is automatically included with the 1Password app installation
- Users need to manually enable the extension in Safari preferences
