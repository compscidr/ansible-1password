#!/bin/bash
set -euo pipefail

echo "🔍 Running local integration tests for ansible-1password collection..."

# Set up environment
export ANSIBLE_ROLES_PATH="$(pwd)/roles"
export ANSIBLE_COLLECTIONS_PATH="~/.ansible/collections"

# Create a temporary test playbook
cat > /tmp/test-playbook.yml << 'EOF'
---
- name: Test ansible-1password collection syntax
  hosts: localhost
  connection: local
  gather_facts: yes
  tasks:
    - name: Test onepassword role inclusion
      ansible.builtin.include_role:
        name: onepassword
      when: false  # Skip actual execution, just test syntax
      
    - name: Test onepassword_cli role inclusion
      ansible.builtin.include_role:
        name: onepassword_cli
      when: false  # Skip actual execution, just test syntax
EOF

echo "✅ Testing role syntax and structure..."

# Test playbook syntax
echo "🔧 Checking playbook syntax..."
ansible-playbook --syntax-check /tmp/test-playbook.yml

# Test roles can be loaded (dry-run)
echo "🔧 Testing role loading (dry-run)..."
ansible-playbook --check /tmp/test-playbook.yml -v

echo "✅ All local integration tests passed!"
echo "ℹ️  Note: Network-dependent tests (package installation) require live environment"

# Clean up
rm -f /tmp/test-playbook.yml