if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

# Your script here

$user = "domain\svc-joindomain"
$password = ConvertTo-SecureString -String "password" -AsPlainText -Force 
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user,$password

Add-Computer -Domainname "chg.com" -OUPath "OU=WinRM Enabled,OU=Servers,DC=chg,DC=com" -Credential $cred  -Restart -Force
