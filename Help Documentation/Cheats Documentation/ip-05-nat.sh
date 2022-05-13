#! /bin/bash
# @edt ASIX M11-SAD Curs 2018-2019
# iptables

echo 1 > /proc/sys/net/ipv4/ip_forward

# Regles flush
iptables -F
iptables -X
iptables -Z
iptables -t nat -F

# Polítiques per defecte:
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT

# obrir el localhost
iptables -A INPUT  -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# obrir la nostra ip
iptables -A INPUT -s 192.168.0.29 -j ACCEPT
iptables -A OUTPUT -d 192.168.0.29 -j ACCEPT

# Fer NAT per les xarxes internes:
# - 192.168.3.0/24
iptables -t nat -A POSTROUTING -s 192.168.3.0/24 -o enp0s3 -j MASQUERADE

# PORT FORWARD A SSH DESDE FORA a RECURSIVE
iptables -t nat -A PREROUTING -i enp0s3 -p tcp --dport 5000 -j DNAT --to 192.168.3.250:22

# PORT FORWARD A SSH DESDE FORA a KALI
# iptables -t nat -A PREROUTING -i enp0s3 -p tcp --dport 5000 -j DNAT --to 192.168.3.251:22

# Fer NAT per les xarxes internes:
# - 192.168.3.0/24
#iptables -t nat -A POSTROUTING -s 192.168.3.0/24 -o enp0s3 -j MASQUERADE

iptables -L -t nat
