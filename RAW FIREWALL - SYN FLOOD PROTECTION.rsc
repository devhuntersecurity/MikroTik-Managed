###############################################################################
# RAW FIREWALL - SYN FLOOD PROTECTION
# RouterOS   : v7.x
# Fungsi     : Mitigasi SYN Flood sebelum masuk Connection Tracking
# Keuntungan : CPU lebih ringan, efektif saat serangan besar
# Catatan    :
# - Drop INVALID dilakukan di FILTER (bukan RAW)
# - Rule harus berurutan dari atas ke bawah
###############################################################################
# DROP INVALID CONNECTION (FILTER)
###############################################################################

/ip firewall filter add chain=input connection-state=invalid action=drop comment="Drop INVALID Input"
/ip firewall filter add chain=forward connection-state=invalid action=drop comment="Drop INVALID Forward"

###############################################################################

# Dibawah ini silahkan sesuaikan dengan jaringan anda.

###############################################################################
# RAW SYN FLOOD PROTECTION - PROFILE A (HOME / SOHO) | (≤20 user, bandwidth ≤50 Mbps)*
###############################################################################

/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn limit=50,20 action=accept comment="RAW Allow SYN - Home"
/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn action=drop comment="RAW Drop SYN Flood - Home"

###############################################################################
# RAW SYN FLOOD PROTECTION - PROFILE B (OFFICE / SMALL HOTSPOT) | (20–100 user, bandwidth 50–200 Mbps)*
###############################################################################

/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn limit=150,50 action=accept comment="RAW Allow SYN - Office"
/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn action=drop comment="RAW Drop SYN Flood - Office"

###############################################################################
# RAW SYN FLOOD PROTECTION - PROFILE C (BIG HOTSPOT) | (100–500 user, bandwidth 200–500 Mbps)*
###############################################################################

/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn limit=300,100 action=accept comment="RAW Allow SYN - Big Hotspot"
/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn action=drop comment="RAW Drop SYN Flood - Big Hotspot"

###############################################################################
# RAW SYN FLOOD PROTECTION - PROFILE D (SERVER / ISP) | (>500 user, server exposed, bandwidth >500 Mbps)*
###############################################################################

/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn limit=1000,200 action=accept comment="RAW Allow SYN - ISP"
/ip firewall raw add chain=prerouting protocol=tcp tcp-flags=syn action=drop comment="RAW Drop SYN Flood - ISP"







