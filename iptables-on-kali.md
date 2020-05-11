# IPTables on Kali:

Storing iptables in Kali is painful. To ease the process, you may following -

```bash# iptables-save > /etc/iptables/iptables.conf```

```
bash# crontab -e

# m h  dom mon dow   command
**@reboot /sbin/iptables-restore < /etc/iptables/iptables.conf**```

Even after reboot, your iptables will persist.
