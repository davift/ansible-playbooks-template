# ansible-playbooks-template

This repository includes a concise set of Ansible Playbooks designed to manage Linux servers, users, updates, and more.

![Network Architecture](https://github.com/davift/ansible-playbooks-template/raw/main/screenshot1.png)

The Menu displays all `*.run` files within the directory. These files support the execution of the playbooks.

Each `*.run` script acquires the necessary variables for every playbook and conducts a Dry Run before actual execution.

These playbooks are ready to use upon deployment, provided that service accounts (`ansible`) for SSH and MySQL connections are established.

You're encouraged to expand upon this foundation and propose additional features through Pull Requests.
