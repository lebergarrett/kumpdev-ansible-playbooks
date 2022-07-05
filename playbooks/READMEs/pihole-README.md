# pihole -- Setup redundant pihole servers

https://davidshomelab.com/pi-hole-failover-with-keepalived/

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
sudo su - pi
curl -sSL https://gravity.vmstan.com | bash
    Remote IP: <Peer IP>
    User: pi
    
<once last step is done on both hosts, run from first (primary)>
gravity-sync push

<on both hosts>
gravity-sync auto
```
