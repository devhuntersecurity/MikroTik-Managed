# Auto Flush Cache DNS Setiap 6 Jam Sekali
# Hanya untuk RouterOS v7
#
/system scheduler
add interval=6h name=flush_cache on-event="/ip dns cache flush\r\
    \n" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=2026-01-01 start-time=00:00:00
