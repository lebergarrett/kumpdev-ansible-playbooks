# pihole -- Setup redundant pihole servers

There are some manual steps that need to be performed here as I have not fully automated the process yet.

```
ansible-playbook -i inventory/hosts.ini playbooks/pihole.yml --ask-vault-pass
```

Then you will need to install and configure gravity-sync
- https://github.com/vmstan/gravity-sync/wiki/Installing

Note that I choose to use a service account named `pi`
For this service account, you will need to set a password for it

```
sudo passwd pi
```

And you will want to update the gravity-sync config file to include cname records

```
sudo vim /etc/gravity-sync/gravity-sync.conf
INCLUDE_CNAME='1'
```
