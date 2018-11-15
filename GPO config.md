Setup the following GPO policy to allow new VMs to automatically be able to communicate to the Ansible host and receive further commands:

  GPO for WinRM Port:
  
  - Computer Configuration > Policies > Windows Settings > Security Settings > Windows Defender Firewall with Advanced Security > 
    Windows Defender Firewall with Advanced Security > Inbound Rules.
  - Right-Click and select "New Rule" > select "Port" > TCP Specific Local Ports "5985" > Allow the connection > Domain and Private. 
  - Give port policy a name.
  
  GPO for WinRM Service:
  
  - Computer Configuration > Preferences > Control Panel Settings > Services
  - Right-Click and select "New Service" 
  - Service name = WinRM
  - Service action = Start service
  
  Leave everything else set to default.
  
  
  
