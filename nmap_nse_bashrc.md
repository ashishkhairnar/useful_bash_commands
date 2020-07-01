## Add to .bashrc ##

```
echo 'nse(){ find /usr/share/nmap/scripts/ -iname "*$1*" -printf "%P\n"; }' >> ~/.bashrc

```


```
Usage:

root@kali:~# source ~/.bashrc

root@kali:~# nse smb
smb-system-info.nse
smb-vuln-ms17-010.nse
smb-brute.nse
smb-mbenum.nse
smb-security-mode.nse
smb-vuln-ms10-061.nse
smb-ls.nse
smb-enum-processes.nse
smb-vuln-regsvc-dos.nse
smb-enum-groups.nse
smb-protocols.nse
smb-enum-shares.nse
smb-vuln-cve-2017-7494.nse
smb-print-text.nse
```
