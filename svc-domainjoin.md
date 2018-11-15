#Enabling a service account to only be able to join computers to the domain without being a domain admin. Follow steps below to do so:

1. Open Active Directory
2. Delegate Control at OU 
3. Create a custom task to delegate 
4. Only the following objects: Computer Objects > Check " Create selected objects in this folder > Full Control
