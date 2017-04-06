#!/bin/sh
# Tested in FreeBSD

sudo sysctl net.inet.tcp.keepinit=1000

for i in `jot - 1 50`
do
ip=10.1.23.$i
echo
echo $ip
fetch -o results/$ip.html http://$ip:81/
done

sudo sysctl net.inet.tcp.keepinit=75000
