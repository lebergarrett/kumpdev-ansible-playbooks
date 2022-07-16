# grafana loki server setup using docker

Run the `grafana-loki.yml` playbook against the host

```
ansible-playbook -i inventory/hosts.ini playbooks/grafana-loki.yml
```

After the loki server is set up, update the promtail config with the new loki endpoint in `files/promtail/promtail-config.yml`
And then apply the promtail config to the normal dockerhost

```
ansible-playbook -i inventory/hosts.ini playbooks/promtail.yml
```