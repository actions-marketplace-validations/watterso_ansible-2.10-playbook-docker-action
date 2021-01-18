# Ansible 2.10 Playbook

This action uses Ansible 2.10 to run the specified playbook.

## Inputs

### `ansible_vault_password`

**Required** The password to use with ansible-vault to decrypt the ssh private key.

### `encrypted_ssh_private_key_path`

**Required** The path to the ssh private key that has been encrypted with ansible-vault.

### `playbook_path`

**Required** The path to the playbook to run.

### `extravars_string`

**Required** The string of extra vars to include with the playbook invocation. In the format that you would include in the command line.


## Example usage

```
uses: watterso/ansible-2.10-playbook-docker-action
with:
  ansible_vault_password: ${{ secrets.ANSIBLE_VAULT_PASSWORD }}
  encrypted_ssh_private_key_path: github_action_key
  playbook_path: playbook.yml
  extravars_string: 'an_extra_var=the_value'
```
