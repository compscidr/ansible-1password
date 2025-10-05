# ansible-1password
[![Static Badge](https://img.shields.io/badge/Ansible_galaxy-Download-blue)](https://galaxy.ansible.com/ui/repo/published/compscidr/onepassword/)
[![CI](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml/badge.svg)](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml)
[![ansible lint rules](https://img.shields.io/badge/Ansible--lint-rules%20table-blue.svg)](https://ansible.readthedocs.io/projects/lint/rules/)

Ansible collection to install 1password and 1password cli.

## Supported Platforms
- Ubuntu (18.04, 20.04, 22.04, 24.04)
- macOS (via Homebrew)

## Usage:
Add the collection to your meta/requirements.yml:
```
collections:
  - name: compscidr.onepassword
    version: "<insert version here>"
```

Use the role(s) in a playbook:
```
- name: Install 1password
  hosts: all
  roles:
    - onepassword
    - onepassword_cli
```

Note, you can install just the CLI if you don't want the GUI version of 1password.

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