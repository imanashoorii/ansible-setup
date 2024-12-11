# Project Setup Script

This script helps you set up a basic directory structure for an Ansible project. It allows you to specify a project name and creates the necessary files and folders within a directory named after your project.

## Features
- Prompts for a project name.
- Creates a directory structure suitable for an Ansible project.
- Includes an `ansible.cfg` file pre-configured with common settings.
- Generates placeholder files like `packages.yml`, `hosts.yml`, and `main.yml`.

## Directory Structure
The script generates the following structure:

```
<project_name>/
├── ansible.cfg
├── group_vars/
│   └── all/
│       └── packages.yml
├── host_vars/
├── inventory/
│   └── hosts.yml
├── playbooks/
│   └── main.yml
├── roles/
```

## Pre-configured `ansible.cfg`
The `ansible.cfg` file is generated with the following settings:

```ini
[defaults]
connection = smart
timeout = 60
deprecation_warnings = False
host_key_checking = False
pipelining = True
forks = 100
```

## Usage
1. Save the script to a file, e.g., `setup_ansible.sh`.
2. Make the script executable:
   ```bash
   chmod +x setup_ansible.sh
   ```
3. Run the script:
   ```bash
   ./setup_ansible.sh
   ```
4. Enter the desired project name when prompted. The script will create the files and folders within a directory named after the project.

## Notes
- Ensure you have the necessary permissions to create directories and files in the target location.
- Customize the script further to suit your specific project requirements.


