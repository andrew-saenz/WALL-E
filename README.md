# WALL-E
Auto Create Windows 2016 Server VMware VM

This project is used to autodeploy a virtual machine template using Ansible with VMware customization specification. These scripts were tested with Windows Server 2016. When running all of these scripts together you should get the following:

  - Auto Deploy VM from template.
  - Join VM to domain and place in GPO Managed OU.
  - GPOs should enable WinRM service and open neccessary ports for Ansible host communication.
  - Install Windows Updates
  - Install application from share drive.
  
Install Ansible 2.7 on CentOS7 Virtual machine
  - Install Centos7
  - install Python 2.7 or higher
  - Install Pyvmomi
  - install Ansible 2.7

Setup Windows Server 2016 Virtual Machine Template:

1. Create Windows Virtual Machine

2. Place the following scripts in a folder (i.e. C:\Scripts):
   - join_domain.ps1
   - run_join_domain.bat

3. Install Powershell 3.0+ and .Net 4.0

4. Run ConfigureForAnsible.ps1. Tweak script as needed (i.e. DisableBasicAuth=$true)

5. Create certificate for Windows authentication for Ansible inventory hosts file. Instructions can be verified here:                        https://docs.ansible.com/ansible/2.5/user_guide/windows_winrm.html#generate-a-certificate
   - Create local administrator account. This will be used to map certificate to local account.
   - Run enable-cert-auth.ps1 to enable certificate authentication.
   - Run new_cert.ps1 to generate a new self-signed certificate. Change powershell script to reflect the local admin account and output        path of certificate 
   - Open "openssl convert pfx" text file and run command in openssl cmd line. You can find windows openssl download at this website:          https://slproweb.com/products/Win32OpenSSL.html.
   - Run import-cert.ps1 to import cert to trusted root CA.
   - Run import-key.ps1 to import key to trusted people.
   - Run map-acct-to-cert.ps1 to map local admin account to certificate. Change powershell script to reflect the local admin account and      admin password
   
6. In vCenter, convert virtual machine to template.  
   #---DO NOT sysprep the image---#
