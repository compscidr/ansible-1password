# ansible-1password
[![Static Badge](https://img.shields.io/badge/Ansible_galaxy-Download-blue)](https://galaxy.ansible.com/ui/repo/published/compscidr/onepassword/)
[![CI](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml/badge.svg)](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml)
[![ansible lint rules](https://img.shields.io/badge/Ansible--lint-rules%20table-blue.svg)](https://ansible.readthedocs.io/projects/lint/rules/)

Ansible collection to install 1password, 1password cli, and browser extensions.

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## Requirements
- **Ubuntu/Debian**: No additional requirements
- **macOS**: Homebrew must be installed
- **All platforms**: The `community.general` Ansible collection (install with `ansible-galaxy collection install community.general`)

## Usage:
Add the collection to your meta/requirements.yml:
```yaml
collections:
  - name: compscidr.onepassword
    version: "<insert version here>"
```

Install required collections:
```bash
ansible-galaxy collection install -r requirements.yml
```

Use the role(s) in a playbook:
```yaml
- name: Install 1password
  hosts: all
  gather_facts: true
  roles:
    - onepassword
    - onepassword_cli
```

Note, you can install just the CLI if you don't want the GUI version of 1password.

## Available Roles

### Core Roles
- **onepassword** - Installs the 1Password desktop application
- **onepassword_cli** - Installs the 1Password CLI (op command)

### Browser Extension Support Roles
These roles automatically install the 1Password browser extensions using enterprise policies (users can still uninstall if desired):

- **onepassword_chrome** - Automatically installs Chrome browser extension via enterprise policy (user removable)
- **onepassword_firefox** - Automatically installs Firefox browser extension via enterprise policy (user removable)
- **onepassword_safari** - Enables Safari browser extension support (macOS only, extension bundled with app)

Example usage with browser extensions:
```yaml
- name: Install 1password with browser support
  hosts: all
  gather_facts: true
  roles:
    - onepassword
    - onepassword_cli
    - onepassword_chrome
    - onepassword_firefox
    - onepassword_safari  # macOS only
```

## Development

This collection includes automated testing with:
- **Ansible Lint**: Ensures code quality and best practices  
- **Molecule Tests**: Full integration testing using Docker containers

### Running Tests Locally

To run tests locally using a virtual environment:

```bash
# Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install testing dependencies
pip install -r molecule/requirements.txt

# Install required Ansible collections for Docker support
ansible-galaxy collection install community.docker

# Run ansible-lint
ansible-lint .

# Run molecule tests (requires Docker)
molecule test
```

**Requirements**: 
- Docker or Podman must be installed and running
- Internet access for downloading container images and 1Password packages
- The molecule tests perform full integration testing by actually installing 1Password in isolated containers