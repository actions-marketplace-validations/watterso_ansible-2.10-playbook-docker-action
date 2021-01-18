#!/bin/sh

# Exit immediately if any of the below commands have a non-zero status.
set -e

mkdir -p ~/.ssh

# Write the ansible vault key to a file and decrypt the ssh private key and write it back in place.
echo "${INPUT_ANSIBLE_VAULT_PASSWORD}" > ~/.ssh/vault_key
ansible-vault decrypt ${INPUT_ENCRYPTED_SSH_PRIVATE_KEY_PATH} --vault-password-file ~/.ssh/vault_key

ansible-galaxy install -r requirements.yaml

ansible-playbook ${INPUT_PLAYBOOK_PATH} -e "${INPUT_EXTRAVARS_STRING}" --user root --key-file ${INPUT_ENCRYPTED_SSH_PRIVATE_KEY_PATH}
