Steps to create a domain account to only join computers to domain instead of using a domain administrator:

  1. Open Active Directory and create a user account to join computers to domain (i.e. svc-joindomain).
  2. Right-click OU that computers will be placed in for WinRM GPO and select "Delegate Control"
  3. Add the service account in the Users and Groups section and click "Next".
  4. Select "Create a custom task to delegate" and click "Next".
  5. Select "Only the following objects in the folder" > check "Computer Objects" > check "Create selected objects in this folder"
     and click "Next".
  6. Under Permissions select "Full Control" and click "Next" and "Finish".
