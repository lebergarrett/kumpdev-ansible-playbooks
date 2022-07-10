# standard mumble server on debian

The playbook itself is dead simple, it installs my common debian items/tools and then installs mumble-server from the debian repo.

Once the package is installed it automatically starts the systemd service `mumble-server.service`.

Manual configuration of the mumble server itself is needed. You will first want to follow the steps to become an Admin

https://wiki.mumble.info/wiki/Murmurguide#Becoming_Administrator_and_Registering_a_User
- Note that you can get the admin password from the mumble log file at `/var/log/mumble-server/mumble-server.log`

TODO:
- set up letsencrypt certificates
    - https://wiki.mumble.info/wiki/Obtaining_a_Let%27s_Encrypt_Murmur_Certificate