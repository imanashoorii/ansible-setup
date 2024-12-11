#!/bin/bash

read -p "Enter the project name: " PROJECT_NAME
mkdir -p "$PROJECT_NAME"

cd "$PROJECT_NAME" || exit

mkdir -p group_vars/all
mkdir -p host_vars
mkdir -p inventory
mkdir -p playbooks
mkdir -p roles

cat <<EOL > ansible.cfg
[defaults]
connection = smart
timeout = 60
deprecation_warnings = False
host_key_checking = False
pipelining=True
forks=100
EOL

touch group_vars/all/packages.yml
touch inventory/hosts.yml
touch playbooks/main.yml

echo "ANSIBLE PROJECT '$PROJECT_NAME' CREATED."
