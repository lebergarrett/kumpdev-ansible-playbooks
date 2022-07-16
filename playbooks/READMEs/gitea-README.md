# gitea server setup using docker

The host needs some specific configuration before running the playbook. Set up a user (admin, with a home dir, etc) named 'git'.
Update the USER_UID and USER_GID in the playbook to this user (you can find this out with the `id` command).

Run the `gitea.yml` playbook against the host

```
ansible-playbook -i inventory/hosts.ini playbooks/gitea.yml
```

There's still plenty of manual configuration needed with this setup, see docs here:

- https://docs.gitea.io/en-us/install-with-docker/#sshing-shim-with-authorized_keys

You may now start the gitea server.
It's currently set up to use self-signed certificates, so you will receive an 'unsafe' banner when accessing.

Navigate to http://$GITEA_SERVER:3000/ to access it.