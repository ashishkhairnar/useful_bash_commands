#!/usr/bin/env bash

declare -a DOMAINS=("domain1" "domain2" "domain3")

for val in ${DOMAINS[@]};

do

        echo "[*] Scanning this domain/IP: $val"

        nmap $val -sV &

done
