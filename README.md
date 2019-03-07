# IPTables-Tor-Blocker
Bash script to block whole tor network with iptables

Usage:

First we need new chain

iptables -N blockit

change change $1 with global ip in hostip=$1 or run it as
sh blockit.sh Global-IP-HERE

You can get your global ip with 
curl https://ipinfo.io/ip
