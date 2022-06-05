# Ansible playbook for configuring my development environment

Installs my common applications and does light configuration to get me up and running. The first iteration of this is only intended to be used on Ubuntu (Debian) based systems.

To run the playbook, ensure you have ansible installed and run the following to install the required roles/collections:

```bash
ansible-galaxy install -r requirements.yml
```

For some reason, the collection included in the requirements file isn't installed by the prior command, so execute the following as well:

```bash
ansible-galaxy collection install -r requirements.yml
```

Once you've done that, you can run the playbook:

```bash
ansible-playbook --ask-become-pass main.yml
```

After a playbook run, you will need to install the vim plugins from inside vim:

```bash
:PlugInstall
```
