# IPTables on Kali:

Storing iptables in Kali is painful. To ease the process, you may following -

```bash# sudo iptables-save > /etc/iptables/iptables.conf```

Enter "@reboot /sbin/iptables-restore < /etc/iptables/iptables.conf" in Crontab as shown below:

```
bash# sudo crontab -e  # opens crontab 

bash# sudo crontab -l
# m h  dom mon dow   command
@reboot /sbin/iptables-restore < /etc/iptables/iptables.conf
```

Even after reboot, your iptables will persist.
