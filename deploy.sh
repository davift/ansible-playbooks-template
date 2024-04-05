#!/bin/bash

source boxes.sh

# Ansible
box_out "Installing/Updating Ansible."
sudo apt update -y && sudo apt install ansible -y || box_failed;

# Dependencies
box_out "Installing/Updating additional packages."
ansible-galaxy collection install ansible.posix || box_failed;
ansible-galaxy collection install community.general || box_failed;

IsUbuntu=$(whoami)

# Makes sure the playbooks are execute by the proper user that has the appropriated SSH Keys.
# if [ $IsUbuntu == 'ubuntu' ]
# then
#   # Protecting SSH Key
#   mkdir -p /home/ubuntu/.ssh
#   chown -R ubuntu: /home/ubuntu/.ssh || box_failed;
#   chmod -R 700 /home/ubuntu/.ssh || box_failed;
# fi

# Check
box_out "Listing the inventory:"
ansible-inventory --list -y

box_exited;
exit 0
