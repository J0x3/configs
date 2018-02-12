#! /bin/sh

iptables -F

iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP

iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
#-A INPUT -i eth0 -p udp -m udp --dport 16514 -j ACCEPT
#-A INPUT -i eth0 -p tcp -m tcp --dport 16514 -j ACCEPT
#-A INPUT -i wlan0 -p udp -m udp --dport 16514 -j ACCEPT
#-A INPUT -i wlan0 -p tcp -m tcp --dport 16514 -j ACCEPT
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
#-A OUTPUT -o eth0 -p udp -m udp --sport 67:68 --dport 67:68 -j ACCEPT
#iptables -A OUTPUT -o eth0 -p udp -m udp --dport 53 -j ACCEPT
#iptables -A OUTPUT -o eth0 -p tcp -m tcp --dport 80 -m state --state NEW -j ACCEPT
#iptables -A OUTPUT -o eth0 -p tcp -m tcp --dport 443 -m state --state NEW -j ACCEPT
#-A OUTPUT -o eth0 -p udp -m udp --sport 123 --dport 123 -j ACCEPT
#-A OUTPUT -o eth0 -p icmp -m icmp --icmp-type 8 -j ACCEPT
#-A OUTPUT -o eth0 -p tcp -m tcp --dport 25 -m state --state NEW -j ACCEPT
#-A OUTPUT -o eth0 -p tcp -m tcp --dport 22 -m state --state NEW -j ACCEPT
#-A OUTPUT -o wlan0 -p udp -m udp --sport 67:68 --dport 67:68 -j ACCEPT
iptables -A OUTPUT -o wlan0 -p udp -m udp --dport 53 -j ACCEPT
iptables -A OUTPUT -o wlan0 -p tcp -m tcp --dport 80 -m state --state NEW -j ACCEPT
iptables -A OUTPUT -o wlan0 -p tcp -m tcp --dport 443 -m state --state NEW -j ACCEPT
#-A OUTPUT -o wlan0 -p udp -m udp --sport 123 --dport 123 -j ACCEPT
#-A OUTPUT -o wlan0 -p icmp -m icmp --icmp-type 8 -j ACCEPT
#-A OUTPUT -o wlan0 -p tcp -m tcp --dport 25 -m state --state NEW -j ACCEPT
#-A OUTPUT -o wlan0 -p tcp -m tcp --dport 22 -m state --state NEW -j ACCEPT
