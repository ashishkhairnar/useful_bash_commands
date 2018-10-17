while read ip; do echo "$ip -       " `dig +answer -x $ip | grep SOA`; done < IP.txt > Output_PTR.txt

while read ip; do echo "$ip -       " `dig +answer -x $ip | grep 'SOA\|PTR'`; done < IP.txt > Output_PTR.txt

while read ip; do echo "$ip -       " `whois $ip | grep CIDR\|NetName`; done < IP.txt > Output_WHOIS.txt
