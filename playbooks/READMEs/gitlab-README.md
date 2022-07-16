# Simple gitlab setup using geerlingguy ansible role

The host needs a minimum of 2vCPU, 4GB RAM, and a reasonable amount of storage for your repos (recommend 20GB to be safe)

Run the `gitlab.yml` playbook against the host

```
ansible-playbook -i inventory/hosts.ini playbooks/gitlab.yml
```

Remote into the host to get the temporary admin password (You have 24 hours to do this before it is wiped)

```
sudo cat /etc/gitlab/initial_root_password
```

You may now sign in to your new gitlab server and configure it https://$GITLAB_SERVER/