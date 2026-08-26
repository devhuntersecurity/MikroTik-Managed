# 🛡️ MikroTik-Managed (Network Automation & Provisioning)

[![Latest Version](https://img.shields.io/github/v/release/devhuntersecurity/MikroTik-Managed)](https://github.com/devhuntersecurity/MikroTik-Managed/releases)
[![Maintenance Status](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/devhuntersecurity/MikroTik-Managed/)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub Issues](https://img.shields.io/github/issues/devhuntersecurity/MikroTik-Managed)](https://github.com/devhuntersecurity/MikroTik-Managed/issues)
[![GitHub Stars](https://img.shields.io/github/stars/devhuntersecurity/MikroTik-Managed?style=social)](https://github.com/devhuntersecurity/MikroTik-Managed/stargazers)
[![RouterOS Architecture](https://img.shields.io/badge/RouterOS-v6%20%2F%20v7-orange.svg)](https://mikrotik.com/)

---

## 📈 Stargazers Over Time
[![Stargazers over time](https://starchart.cc/devhuntersecurity/MikroTik-Managed.svg?variant=adaptive)](https://starchart.cc/devhuntersecurity/MikroTik-Managed)

**MikroTik-Managed** adalah repositori *production-ready* yang dirancang untuk otomatisasi infrastruktur jaringan. Fokus pada keamanan (**Hardening**), efisiensi **Provisioning**, dan sistem **Disaster Recovery** bagi para Network Engineer profesional.

---

## 🚀 Key Modules & Capabilities

* **⚡ Automated Provisioning**: Standarisasi konfigurasi interface, IP management, BGP routing, dan DNS tuning.
* **🛡️ Security Hardening**: Proteksi Bruteforce, firewall filter layer 7, threat intelligence feed, dan pengetatan service.
* **📡 Disaster Recovery (DR)**: Backup otomatis berjadwal yang dikirimkan melalui **SFTP** atau **Email SMTP**.
* **🤖 Intelligent Monitoring**: Notifikasi event kritis (CPU Load, Link Down, Failover) via **Telegram Bot API**.
* **📶 Traffic Engineering**: Optimasi Queue dinamis dan PBR (Policy-Based Routing) untuk efisiensi bandwidth.

---

## 🛠️ Implementasi & Penggunaan

> ⚠️ **PENTING**: Repositori ini berisi berbagai modul skrip multi-bahasa (`.rsc`, `.py`, `.yml`, `.sh`). **Jangan pernah mengimpor atau mengeksekusi skrip secara mentah (*blind deployment*).**

Sebelum melakukan eksekusi, pastikan Anda mengikuti langkah-langkah berikut:

1. **Cermati & Pahami**: Buka file skrip yang ingin digunakan. Baca alur logika, sintaks, serta alokasi resource di dalamnya untuk memastikan kesesuaian dengan topologi jaringan Anda.
2. **Sesuaikan Variabel**: Edit parameter sensitif dan variabel lokal (seperti nama `Interface`, `IP Address`, `Subnet`, `tgBotToken`, `tgChatId`, atau `Credentials`) di dalam file skrip atau `.env`.
3. **Uji Coba di Lab**: Selalu tes dan validasi skrip pada lingkungan simulasi (GNS3, EVE-NG, atau CHR Lab) sebelum melakukan deployment ke router/server produksi.
4. **Eksekusi Sesuai Format**:
   * **RouterOS Script (`.rsc`)**: Tinjau ulang kode, unggah via Winbox/Terminal, lalu jalankan `/import file-name=nama_skrip.rsc`.
   * **Python (`.py`) / Bash (`.sh`)**: Jalankan di lingkungan lokal/server otomasi setelah mengatur konfigurasi atau variabel environment.
   * **Ansible Playbook (`.yml`)**: Sesuaikan file `inventory` serta variabel playbook, lalu eksekusi `ansible-playbook`.

---

## 💰 Dukungan & Donasi

If you find this project helpful and would like to support it, please consider donating. Your support keeps this project alive!

Jika Anda merasa terbantu dengan skrip ini, pertimbangkan untuk memberikan dukungan sebagai bentuk apresiasi terhadap pengembangan keamanan jaringan.

[![Support via Saweria](https://img.shields.io/badge/Support-Saweria-orange)](https://saweria.co/DevHunter)

### Scan QR Code for Donations
<img src="documentations/qris-donate.png" alt="Donation QR Code" width="200" height="200">

---

### Stay Secure & High Performance | Ahmad Abdul Machrus (Dev'Hunter Security)

![Alt](https://repobeats.axiom.co/api/embed/be859a401d2eb19c9c588f0dc999c9b64194b995.svg "Repobeats analytics image")

---
**⚠️ WARNING**: *Selalu uji coba skrip di lingkungan lab (GNS3/EVE-NG) sebelum deployment ke server produksi. Penulis tidak bertanggung jawab atas segala bentuk Network Outage.*
