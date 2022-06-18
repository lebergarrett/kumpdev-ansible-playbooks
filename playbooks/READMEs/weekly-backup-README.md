# weekly-backup -- Configure my server that's named 'weekly-backup' which backs up my nfs share once a week and then goes offline

Very simple playbook to provision a server that runs a backup cron task and stores it on a mounted external drive.

Scheduling the virtual machine to start must be handled outside of this playbook, in my case via a cronjob on proxmox. Once the backup is completed, the VM will shut itself down.

The script removes backups older than 14 days, meaning it should only hold 2 backups at any point in time (less than I would like, but storage limitations create this)