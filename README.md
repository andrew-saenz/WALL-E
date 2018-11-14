# WALL-E
Auto Create VMware VM


This project is used to autodeploy a virtual machine template using Ansible. When running all of these scripts together you should get the following:

1. Auto Deploy VM from template
2. Join VM to domain and place in GPO Managed OU
3. GPOs should enable WinRM service and open neccessary ports for Ansible host communication

Optional features: Windows Updates and application installation from share drive
