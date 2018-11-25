1) DIG -

while read ip; do echo "$ip -       " `dig +answer -x $ip | grep SOA`; done < IP.txt > Output_PTR.txt
while read ip; do echo "$ip -       " `dig +answer -x $ip | grep 'SOA\|PTR'`; done < IP.txt > Output_PTR.txt
while read ip; do echo "$ip -       " `whois $ip | grep CIDR\|NetName`; done < IP.txt > Output_WHOIS.txt

2) CRON -

Cron: Every hour
0 1 * * * /usr/bin/python /home/abc.py

3) Finding Netstat along with WHOIS (time saving tricks) -

echo ""  && echo "[*] Finding connections..." && echo "" && (netstat -aptn 2>/dev/null | grep ESTABLISHED) && (echo "") && (echo "[*] Looking up WHOIS..Hang on...") && (echo "") && (netstat -aptn 2>/dev/null | cut -d ":" -f 2 | cut -d " " -f 6 | sed 's/established)//'| sed '/^$/d' | while IFS= read -r line; do echo "$line - `whois $line | grep OrgName`"; done | sed 's/OrgName://' | column -t)
