# standard mumble server on debian

The playbook sets up a mumble server along with highly-tailored LetsEncrypt setup.

Once the package is installed it automatically starts the systemd service `mumble-server.service`.

Manual configuration of the mumble server itself is needed. You will first want to follow the steps to become an Admin

https://wiki.mumble.info/wiki/Murmurguide#Becoming_Administrator_and_Registering_a_User
- Note that you can get the admin password from the mumble log file at `/var/log/mumble-server/mumble-server.log`
