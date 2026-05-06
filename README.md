# 🛡️ MikroTik-Managed (Network Automation & Provisioning)

[![Latest Version](https://img.shields.io/github/v/release/devhunter-git/MikroTik-Managed)](https://github.com/devhunter-git/MikroTik-Managed/releases)
[![Maintenance Status](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/devhunter-git/MikroTik-Managed/)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub Issues](https://img.shields.io/github/issues/devhunter-git/MikroTik-Managed)](https://github.com/devhunter-git/MikroTik-Managed/issues)
[![GitHub Stars](https://img.shields.io/github/stars/devhunter-git/MikroTik-Managed?style=social)](https://github.com/devhunter-git/MikroTik-Managed/stargazers)
[![RouterOS Architecture](https://img.shields.io/badge/RouterOS-v6%20%2F%20v7-orange.svg)](https://mikrotik.com/)

---

## 📈 Stargazers Over Time
[![Stargazers over time](https://starchart.cc/devhunter-git/MikroTik-Managed.svg?variant=adaptive)](https://starchart.cc/devhunter-git/MikroTik-Managed)

**MikroTik-Managed** adalah repositori *production-ready* yang dirancang untuk otomatisasi infrastruktur jaringan. Fokus pada keamanan (**Hardening**), efisiensi **Provisioning**, dan sistem **Disaster Recovery** bagi para Network Engineer profesional.

---

## 🚀 Key Modules & Capabilities

* **⚡ Automated Provisioning**: Standarisasi konfigurasi interface, IP management, dan DNS tuning secara instan.
* **🛡️ Security Hardening**: Proteksi Bruteforce, firewall filter layer 7, dan pengetatan akses service router.
* **📡 Disaster Recovery (DR)**: Backup otomatis berjadwal yang dikirimkan melalui **SFTP** atau **Email SMTP**.
* **🤖 Intelligent Monitoring**: Integrasi notifikasi event kritis (CPU Load, Link Down) via **Telegram Bot API**.
* **📶 Traffic Engineering**: Optimasi Queue dinamis untuk manajemen bandwidth yang presisi.

---

## 🛠️ Implementasi & Penggunaan

1.  **Upload**: Unggah file `.rsc` ke menu **Files** di Winbox.
2.  **Import**: Jalankan perintah di Terminal MikroTik:
    ```routeros
    /import file-name=nama_skrip.rsc
    ```
3.  **Variables**: Sesuaikan `tgBotToken`, `tgChatId`, atau `identity` di dalam skrip sebelum dieksekusi.

---

## 💰 Dukungan & Donasi

If you find this project helpful and would like to support it, please consider donating. Your support keeps this project alive!

Jika Anda merasa terbantu dengan skrip ini, pertimbangkan untuk memberikan dukungan sebagai bentuk apresiasi terhadap pengembangan keamanan jaringan.

[![Support via Saweria](https://img.shields.io/badge/Support-Saweria-orange)](https://saweria.co/DevHunter)

### Scan QR Code for Donations
<img src="documentations/saweria.png" alt="Donation QR Code" width="200" height="200">

---

### Stay Secure & High Performance | Ahmad Abdul Machrus (DevHunter1337)

![Alt](https://repobeats.axiom.co/api/embed/be859a401d2eb19c9c588f0dc999c9b64194b995.svg "Repobeats analytics image")

---
**⚠️ WARNING**: *Selalu uji coba skrip di lingkungan lab (GNS3/EVE-NG) sebelum deployment ke server produksi. Penulis tidak bertanggung jawab atas segala bentuk Network Outage.*
