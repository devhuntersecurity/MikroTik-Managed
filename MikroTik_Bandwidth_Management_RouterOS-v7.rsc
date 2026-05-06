# MIKROTIK SIMPLE QUEUE BANDWIDTH MANAGEMENT
# Hanya support RouterOS v7 saja
# Dibagian simple queue sesuaikan dengan kapasitas bandwidth anda

/ip firewall address-list add address=10.0.0.0/8 list=LOCAL-IP
/ip firewall address-list add address=172.16.0.0/12 list=LOCAL-IP
/ip firewall address-list add address=192.168.0.0/16 list=LOCAL-IP

/ip firewall mangle add action=jump chain=prerouting comment="[ RouterOS Script is proudly powered by DevHunter.dev SECURE ]" jump-target=DevHunter.dev-Pre
/ip firewall mangle add action=jump chain=postrouting jump-target=DevHunter.dev-Pos
/ip firewall mangle add action=jump chain=input jump-target=DevHunter.dev-Inp
/ip firewall mangle add action=jump chain=output jump-target=DevHunter.dev-Out
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Ping (icmp) + Latency Mangle Rules - DevHunter.dev.com" new-packet-mark=ping_mark packet-size=0-64 passthrough=no protocol=icmp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=ping_mark packet-size=0-64 passthrough=no protocol=icmp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Dns (53) + Tracert Mangle Rules - DevHunter.dev.com" new-packet-mark=dns_mark packet-size=0-512 passthrough=no port=53,5353,33434-33534,30000,64872-64875,853 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre new-packet-mark=dns_mark packet-size=0-512 passthrough=no port=53,5353,33434-33534,30000,64872-64875,853 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=dns_mark packet-size=0-512 passthrough=no port=53,5353,33434-33534,30000,64872-64875,853 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=dns_mark packet-size=0-512 passthrough=no port=53,5353,33434-33534,30000,64872-64875,853 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Game Online PUBG & MLBB - DevHunter.dev.com" connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="5000-5221,5224-5227,5229-5241,5243-5508,5551-5559,5601-5700,9000-9010,9443" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="5000-5221,5224-5227,5229-5241,5243-5508,5551-5559,5601-5700,9000-9010,9443" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=5520-5529,10003,30000-30300,8443 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=5520-5529,10003,30000-30300,8443 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=7889,10012,13004,14000,17000,17500,18081,20000-20002,20371 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=7889,10012,13004,14000,17000,17500,18081,20000-20002,20371 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="4001-4009,5000-5221,5224-5241,5243-5509,5551-5559,5601-5700,8130,8443,9120" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="4001-4009,5000-5221,5224-5241,5243-5509,5551-5559,5601-5700,8130,8443,9120" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=2702,3702,5517,5520-5529,8001,9000-9010,9992,10003,30000-30300 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=2702,3702,5517,5520-5529,8001,9000-9010,9992,10003,30000-30300 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=8011,9030,10491,10612,12235,13004,13748,17000,17500,20000-20002 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=8011,9030,10491,10612,12235,13004,13748,17000,17500,20000-20002 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=7086-7995,10039,10096,11455,12070-12460,13894,13972,41182-41192 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=7086-7995,10039,10096,11455,12070-12460,13894,13972,41182-41192 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Game Online all - DevHunter.dev.com" connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!0-1023,1080,1194,1337,1410-1480,1451-1471,1701-1723,1935,2088,2112 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!0-1023,1080,1194,1337,1410-1480,1451-1471,1701-1723,1935,2088,2112 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!0-1023,1080,1194,1337,1410-1480,1451-1471,1701-1723,1935,2088,2112 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!0-1023,1080,1194,1337,1410-1480,1451-1471,1701-1723,1935,2088,2112 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!2400-2565,2453-2471,2545-2565,3128,3389,3478-3479,3999,4244,4380,4495 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!2400-2565,2453-2471,2545-2565,3128,3389,3478-3479,3999,4244,4380,4495 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!2400-2565,2453-2471,2545-2565,3128,3389,3478-3479,3999,4244,4380,4495 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!2400-2565,2453-2471,2545-2565,3128,3389,3478-3479,3999,4244,4380,4495 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!4500,4999,5060-5070,5200-5260,5200-5280,5349,5353,5800,5900,5938,6568 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!4500,4999,5060-5070,5200-5260,5200-5280,5349,5353,5800,5900,5938,6568 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!4500,4999,5060-5070,5200-5260,5200-5280,5349,5353,5800,5900,5938,6568 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port=!4500,4999,5060-5070,5200-5260,5200-5280,5349,5353,5800,5900,5938,6568 protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!6667,7070,8001,8080,8100,8200,8291,8444-8471,8578,8690,8728,8729,8801-8811" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!6667,7070,8001,8080,8100,8200,8291,8444-8471,8578,8690,8728,8729,8801-8811" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!6667,7070,8001,8080,8100,8200,8291,8444-8471,8578,8690,8728,8729,8801-8811" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!6667,7070,8001,8080,8100,8200,8291,8444-8471,8578,8690,8728,8729,8801-8811" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!8888,9917,12673,19305-19309,30000,33434-33534,34784,45395,45620,50318,59234" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!8888,9917,12673,19305-19309,30000,33434-33534,34784,45395,45620,50318,59234" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!8888,9917,12673,19305-19309,30000,33434-33534,34784,45395,45620,50318,59234" protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M new-packet-mark=game_mark packet-size=0-512 passthrough=no port="!8888,9917,12673,19305-19309,30000,33434-33534,34784,45395,45620,50318,59234" protocol=udp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Winbox & Network Tools Mangle Rules - DevHunter.dev.com" new-packet-mark=winbox_mark passthrough=no port=20-25,2112,3389,4495,5800,5900,5938,6568,7070,8291,8728,8729 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre new-packet-mark=winbox_mark passthrough=no port=10936,1024,1025,10851,8292 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=winbox_mark passthrough=no port=20-25,2112,3389,4495,5800,5900,5938,6568,7070,8291,8728,8729 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=winbox_mark passthrough=no port=10936,1024,1025,10851,8292 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment=Speedtest new-packet-mark=speedtest_mark passthrough=no port=8080,5060 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos new-packet-mark=speedtest_mark passthrough=no port=8080,5060 protocol=tcp
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pre comment="Fastest Priority Packet Mark - DevHunter.dev.com" connection-rate=0-1M new-packet-mark=fastest_mark packet-size=0-1024 passthrough=no src-address-list=LOCAL-IP
/ip firewall mangle add action=mark-packet chain=DevHunter.dev-Pos connection-rate=0-1M dst-address-list=LOCAL-IP new-packet-mark=fastest_mark packet-size=0-1024 passthrough=no
/ip firewall mangle add action=return chain=DevHunter.dev-Pre
/ip firewall mangle add action=return chain=DevHunter.dev-Pos
/ip firewall mangle add action=return chain=DevHunter.dev-Inp
/ip firewall mangle add action=return chain=DevHunter.dev-Out

/queue type set 1 pfifo-limit=300
/queue type add cake-flowmode=dual-srchost cake-nat=yes kind=cake name=Cake-Down
/queue type add cake-diffserv=besteffort cake-flowmode=dual-dsthost cake-nat=yes kind= cake name=Cake-Up
/queue type add kind=sfq name=sfq
/queue type add cake-nat=yes kind=cake name=cake

/queue simple set queue=Cake-Up/Cake-Down [find]
/queue simple add limit-at=1M/1M max-limit=5M/5M name="#01. ICMP" packet-marks=ping_mark priority=1/1 queue=sfq/sfq target=192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
/queue simple add limit-at=1M/1M max-limit=100M/100M name="#02. Dns (53) + Tracert" packet-marks=dns_mark priority=1/1 queue=sfq/sfq target= 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
/queue simple add max-limit=10M/10M name="#04. Winbox & Network Tools" packet-marks= winbox_mark queue=sfq/sfq target=192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
/queue simple add limit-at=1M/1M max-limit=100M/100M name="#03. Global Games Online" packet-marks=game_mark priority=1/1 queue=cake/cake target= 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
/queue simple add max-limit=200M/200M name="#05. Speedtest" packet-marks=speedtest_mark target=192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
/queue simple add limit-at=125M/125M max-limit=1G/1G name="#06. Fastest Priority" packet-marks=fastest_mark priority=4/4 target= 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12

/queue simple move [find name="#01. ICMP"] 0
/queue simple move [find name="#02. Dns (53) + Tracert"] 0
/queue simple move [find name="#03. Global Games Online"] 0
/queue simple move [find name="#04. Winbox & Network Tools"] 0
/queue simple move [find name="#05. Speedtest"] 0
/queue simple move [find name="#06. Fastest Priority"] 0