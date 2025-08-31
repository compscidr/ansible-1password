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
- **Molecule Tests**: Integration testing using Docker containers

### Running Tests Locally

To run tests locally using a virtual environment:

```bash
# Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install testing dependencies
pip install -r molecule/requirements.txt

# Install required Ansible collections
ansible-galaxy collection install community.docker:>=3.10.2 ansible.posix:>=1.4.0

# Run ansible-lint
ansible-lint .

# Run molecule tests
molecule test
```

**Note**: Molecule tests require Docker and internet access to download collections from Galaxy. Ensure Docker is running before executing molecule tests.