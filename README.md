# ansible-1password
[![Static Badge](https://img.shields.io/badge/Ansible_galaxy-Download-blue)](https://galaxy.ansible.com/ui/repo/published/compscidr/onepassword/)
[![CI](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml/badge.svg)](https://github.com/compscidr/ansible-1password/actions/workflows/check.yml)
[![ansible lint rules](https://img.shields.io/badge/Ansible--lint-rules%20table-blue.svg)](https://ansible.readthedocs.io/projects/lint/rules/)

Ansible collection to install 1password and 1password cli.

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
- **Integration Tests**: Local testing for role syntax and structure
- **Molecule Tests**: Full integration testing using Docker containers (requires network access)

To run tests locally:
```bash
# Install dependencies
pip install -r molecule/requirements.txt

# Run local integration tests (works in all environments)
./test-local.sh

# Run full molecule tests (requires network access for dependencies)
molecule test

# Run only ansible-lint
ansible-lint .
```

**Note**: Molecule tests require internet access to download collections from Galaxy. In network-restricted environments (like some CI systems), the local integration tests provide basic syntax and structure validation.