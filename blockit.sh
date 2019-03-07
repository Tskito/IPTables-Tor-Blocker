#!/bin/bash

iptables -F blockit
hostip=$1

for i in $(wget https://check.torproject.org/cgi-bin/TorBulkExitList.py\?ip=$hostip -O- -q |\
                grep -E '^[[:digit:]]+(\.[[:digit:]]+){3}$'); do
        iptables -A blockit -s "$i" -j DROP
        #echo "$i"
done
iptables -A blockit -j RETURN
