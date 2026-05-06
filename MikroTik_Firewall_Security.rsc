# PERINGATAN: Kami tidak bertanggung jawab atas kesalahan, kegagalan, kerusakan, atau router Anda yang terkunci karena faktor yang disengaja maupun tidak disengaja.
# Script kami bekerja secara independen, bukan di bawah naungan Perusahaan MikroTik.
# Semua masalah yang terjadi pada router Anda adalah tanggung jawab Anda sendiri dan Anda harus siap menanggung semua risikonya.
# Jika Anda "Setuju & Paham", silakan lanjutkan.

/interface list add name=WAN-PROTECT
/interface list member add interface="(*Tambahkan interface VPN anda)" list=WAN-PROTECT
/interface list member add interface="(*Tambahkan interface WAN anda)" list=WAN-PROTECT

/ip firewall address-list add list=Bogon address=0.0.0.0/8 comment="Bogon: Current Network"
/ip firewall address-list add list=Bogon address=10.0.0.0/8 comment="Bogon: Private Class A"
/ip firewall address-list add list=Bogon address=100.64.0.0/10 comment="Bogon: Shared Address Space"
/ip firewall address-list add list=Bogon address=127.0.0.0/8 comment="Bogon: Loopback"
/ip firewall address-list add list=Bogon address=169.254.0.0/16 comment="Bogon: Link-Local"
/ip firewall address-list add list=Bogon address=172.16.0.0/12 comment="Bogon: Private Class B"
/ip firewall address-list add list=Bogon address=192.0.0.0/24 comment="Bogon: IANA IPv4 Special Purpose"
/ip firewall address-list add list=Bogon address=192.0.2.0/24 comment="Bogon: TEST-NET-1"
/ip firewall address-list add list=Bogon address=192.88.99.0/24 comment="Bogon: 6to4 Relay Anycast"
/ip firewall address-list add list=Bogon address=192.168.0.0/16 comment="Bogon: Private Class C"
/ip firewall address-list add list=Bogon address=198.18.0.0/15 comment="Bogon: Benchmarking"
/ip firewall address-list add list=Bogon address=198.51.100.0/24 comment="Bogon: TEST-NET-2"
/ip firewall address-list add list=Bogon address=203.0.113.0/24 comment="Bogon: TEST-NET-3"
/ip firewall address-list add list=Bogon address=224.0.0.0/4 comment="Bogon: Multicast"
/ip firewall address-list add list=Bogon address=240.0.0.0/4 comment="Bogon: Reserved for Future Use"

/ip service set ftp disabled=yes
/ip service set ssh disabled=yes
/ip service set telnet disabled=yes
/ip service set www disabled=yes
/ip service set api disabled=yes
/ip service set api-ssl disabled=yes
/ip service set winbox port=8292

/ip firewall filter add action=drop chain=input comment="Block Winbox Scan" dst-port=21,22,23,8291,80,443,8728,8729 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=21,22,23,8291,80,443,8728,8729 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block Neighbor Discovery" dst-port=5678 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=5678 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block MAC Address" dst-port=20561 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=20561 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block Traceroute" dst-port=33434-33534 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=33434-33534 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block Open Recursive DNS" dst-port=53,5353,853 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=53,5353,853 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block Open PROXY" dst-port=3128,8080 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=3128,8080 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block SOCKS Proxy" dst-port=1080 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=1080 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block BTest Server" dst-port=2000 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=2000 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block SNMP" dst-port=161,162 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=161,162 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block The Dude" dst-port=2210,2211 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=2210,2211 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Block SSDP & UPnP" dst-port=1900 in-interface-list=WAN-PROTECT protocol=tcp
/ip firewall filter add action=drop chain=input dst-port=1900 in-interface-list=WAN-PROTECT protocol=udp
/ip firewall filter add action=drop chain=input comment="Drop Ping from WAN" icmp-options=8:0 in-interface-list=WAN-PROTECT protocol=icmp
/ip firewall filter add action=drop chain=input src-address-list=Bogon in-interface-list=WAN-PROTECT comment="Drop Bogon IP"
/ip firewall filter add action=drop chain=input comment="DROP FLOOD VPN L2TP" dst-port=4500,1701,500 in-interface="(*Tambahkan interface VPN anda)" protocol=udp
/ip firewall filter add action=drop chain=input comment="DROP FLOOD VPN PPTP" in-interface="(*Tambahkan interface VPN anda)" protocol=gre
/ip firewall filter add action=drop chain=input comment="DROP FLOOD VPN PPTP" dst-port=1723 in-interface="(*Tambahkan interface VPN anda)" protocol=tcp
/ip firewall filter add action=drop chain=input comment="DROP FLOOD VPN IKEV/IPSEC" in-interface="(*Tambahkan interface VPN anda)" protocol=ipsec-esp
