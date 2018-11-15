OpenSSl command to convert pfx cert:

1. Copy certificates ( from powershell command output(e.g. C:\Scripts\certificates) to OpenSSL bin directory (e.g. C:\OpenSSL-Win64\bin)
2. Open command line to openssl directoy (e.g. cd C:\OpenSSL-Win64\bin) and type "openssl".
3. On openssl command prompt enter the following: pkcs12 -in cert.pfx -nocerts -nodes -out cert_key.pem -passin pass: -passout pass:
4. Use WinSCP to copy converted .pem and .key file to directoy on ansible 
   (e.g. Windows C:\OpenSSL-Win64\bin\cert.pem and cert_key.pem to Ansible host /etc/ansible/certs)
