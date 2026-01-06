
# 🐉 Kamehameha Scanner

![Version](https://img.shields.io/badge/Version-1.5.5-blue?style=flat-square)
![Python](https://img.shields.io/badge/Python-3.8%2B-yellow?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Type](https://img.shields.io/badge/Type-Security%20Assessment-red?style=flat-square)


```

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⠀⠀⠓⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠊⡄⠀⡆⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠧⡲⠀⠀⠀⠀⠈⢆⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠎⠀⠀⠀⢠⠬⠀⠀⠀⠀⠀⠀⠈⡔⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⡀⠀⡘⠀⠀⠀⠀⡘⢅⠀⠀⠀⠀⠀⠀⠀⢡⣈⠸⢀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⢡⢄⠃⠀⠀⠀⡐⠁⢸⠀⠀⠀⠀⠀⠀⠀⡘⠀⢁⡋⣝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⢻⠀⠀⠀⡰⠀⠀⠀⡆⠀⠀⠀⠀⢀⠔⠁⠀⠘⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⡇⠀⠀⠱⡀⡰⠁⠀⠀⠀⢃⠀⠀⢀⠔⠁⠀⠀⠀⢰⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠕⠰⡇⠀⠀⠀⠈⠂⡆⠀⠀⠀⠈⢆⠔⠁⠀⠀⠀⠀⠀⡆⠀⠀⢐⢔⡊⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠰⡀⠀⠀⠀⠀⢃⠀⠀⠀⠀⠀⢢⠀⠀⠀⠀⠀⡈⢄⠤⠂⠁⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠀⠀⠱⡀⠀⠀⠀⢸⠀⠀⢀⡀⢀⡀⠀⠀⠀⠀⢀⠇⠁⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠱⡀⠀⡠⠚⢄⠊⠁⠀⠒⠈⠒⠊⠉⠂⡘⠀⠀⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢅⠞⠡⡀⠀⠀⠐⠝⠀⢠⠃⠀⣀⠤⠒⢄⢄⡄⠀⡄⠀⢱⠀⠀⢀⠆⠓⢨⠝⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⡀⠈⠢⠀⣨⠀⠀⢜⡀⡜⠀⠀⠀⠀⢀⠃⠠⠂⠀⢺⣀⠔⠁⠀⢠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⡀⡰⣿⢣⠷⢶⢃⡁⠀⠀⠀⠀⠮⢊⣉⣀⡒⢹⣿⠀⣀⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠓⠿⣻⣦⣵⣼⣿⣶⣄⡀⠀⣸⣔⣿⣿⣿⣯⣿⢷⢌⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⡈⠉⢛⣾⣮⠙⠉⠉⣿⣾⡿⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⠛⣷⣄⠘⠿⢿⣦⣠⣼⠟⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢀⠤⡄⣶⠿⠋⠻⠃⠀⣾⠛⢿⣶⣶⠷⢻⣿⠀⠘⠟⠛⠿⣦⡤⡀⢄⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⡠⠤⠐⠒⠀⠈⠉⠐⠁⠀⡇⠁⠀⠀⠀⠀⠀⣻⣆⠀⠀⠀⠀⣼⡇⠀⠀⠀⠀⠀⠀⠇⡄⠀⠉⡁⠑⠂⠤⠄⠀⠀⠀⠀
⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⡄⣤⣤⣿⣿⣼⣿⣿⣥⣀⣀⣼⡯⣤⣤⢤⡤⢤⣀⡸⠀⡆⠀⢀⠃⠀⠀⠀⡄⠀⠀⠀⠀
⠀⠀⠄⠸⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠇⠙⠤⡀⠀⠀⠀⠀⠉⠉⠙⠛⠛⠛⠉⠉⠈⠉⠉⡑⠀⠰⠀⠀⡜⠀⠀⠀⠀⡗⢄⠀⠀⠀
⢀⠎⠀⠀⡆⠀⠀⠀⠀⠀⠀⠈⠀⠀⢰⠀⠀⠈⠒⠠⠄⢀⣀⣀⣀⣀⢀⣀⡀⠤⠀⠂⠁⠀⠀⠆⠀⠰⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀
⡘⢄⡀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠃⠀⠀⠀⠀⢀⠀⠀⠀⣁⠀
⢼⡔⠨⢔⣺⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠀⠀⠀⠀⠀⠀⠀⠀⢸⣒⣈⠥⢺⡄

          K A M E H A M E H A   S C A N N E R

```
> **The Next-Generation Hybrid DAST Framework for Automated Security Assessments.**

**Kamehameha Scanner** is a comprehensive security auditing framework designed for Red Teamers, System Administrators, and Security Engineers. Unlike traditional scanners, it employs a **Hybrid Architecture**: orchestrating industry-standard tools (Nuclei, Subfinder, Httpx) for speed, while utilizing custom Python logic for deep validation and context-aware exploitation.

It streamlines the entire assessment lifecycle: **Reconnaissance** → **Crawling** → **Vulnerability Scanning** → **Reporting**.

---

## ⚡ Key Features

### 🔍 1. Advanced Reconnaissance
- **Subdomain Enumeration:** Passive discovery using `subfinder` to map the full attack surface.
- **Live Host Probing:** Smart filtering with `httpx` to target only active web servers.
- **Port Scanning:** Service and version detection via `nmap` (Supports Fast & Full modes).
  
### ☢️ 2. Automated Vulnerability Engine (Nuclei)
- **Template-Based Scanning:** Mengintegrasikan **Nuclei** secara native untuk memindai ribuan CVE, kesalahan konfigurasi, dan kerentanan umum dengan kecepatan tinggi menggunakan template komunitas terbaru.

### 🕷️ 3. Hybrid Crawling Engine
- **Static Analysis:** Ultra-fast URL extraction using Regex on static HTML.
- **Dynamic SPA Crawling:** Integrated **Playwright** (Headless Chromium) to render JavaScript-heavy apps (React, Vue, Angular) and discover hidden API endpoints.

### 🛡️ 4. Evasion & Anonymity
- **Cloudflare Bypass:** Uses `cloudscraper` and aggressive browser simulation to bypass anti-bot protections.
- **WAF Evasion:** Detects 403/406 blocks and automatically attempts payload encoding.
- **Tor Support:** Built-in SOCKS5 proxy support for anonymous scanning.

### 📊 5. Professional Reporting
- **Interactive Dashboard:** HTML report with severity charts.
- **Audit Ready:** Generates Markdown reports suitable for technical documentation.
- **Data Export:** JSON and CSV formats for machine integration.

---

## 🔬 Vulnerability Detection Capabilities

Kamehameha Scanner performs deep analysis on the following categories, utilizing **Active Validation** to minimize false positives.

| Category | Vulnerability Type | Detection Logic |
| :--- | :--- | :--- |
| **Injection** | **SQL Injection** | Error-based pattern matching & Time-based analysis (`SLEEP(5)`). |
| | **XSS (Reflected)** | Context-aware validation (checks if payload executes in browser). |
| | **Command Injection** | OS Command execution (`id`, `whoami`) & time-delay analysis. |
| | **SSTI** | Template math evaluation (e.g., `{{7*7}}` -> `49`). |
| | **NoSQL Injection** | Boolean & Time-based NoSQL payload manipulation. |
| | **XXE** | XML External Entity processing via OAST (Out-of-Band). |
| | **CRLF Injection** | Header splitting verification. |
| **Broken Auth** | **Bruteforce Login** | Multi-threaded login attempts with automatic form detection. |
| | **Default Credentials** | Checks against common default admin/password combinations. |
| | **JWT Issues** | Weak signature verification (e.g., `alg: none`). |
| | **Session Fixation** | Checks for immutable session cookies. |
| **Server-Side** | **SSRF** | Access to localhost, private IPs, and Cloud Metadata (AWS/GCP). |
| | **Blind SSRF (OAST)** | Interaction with external tracking servers (Interactsh). |
| | **LFI / RFI** | Local File Inclusion (`/etc/passwd`) & Remote File Inclusion. |
| **Misconfig** | **IDOR** | Parameter manipulation to access unauthorized data objects. |
| | **CORS** | Permissive Access-Control-Allow-Origin policies. |
| | **Open Redirect** | Unvalidated redirects to malicious domains. |
| | **File Upload** | Uploading and verifying execution of malicious files (Web Shells). |
| **Leaks** | **API Key Leakage** | Passive JS analysis for hardcoded secrets (AWS, Stripe, Google). |
| | **Backup Files** | Fuzzing for exposed database backups (`.sql`, `.bak`). |

---

## 📥 Installation

We provide an **Universal Installer Script** that automatically detects your Linux distribution (Kali, Ubuntu, Arch, etc.) and installs all dependencies (Python libs, Go tools, Nmap, Playwright).

### 🚀 Automatic Installation (Recommended)

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/yourusername/kamehameha-scanner.git](https://github.com/yourusername/kamehameha-scanner.git)
   cd kamehameha-scanner

```

2. **Run the installer:**
```bash
chmod +x install.sh
sudo ./install.sh

```


3. **Reload your shell (Important):**
```bash
source ~/.bashrc
# OR if you use ZSH
source ~/.zshrc

```



> **Note:** The installer handles everything, including `nuclei`, `subfinder`, `httpx`, and `playwright` browsers.

---

## 💻 Usage Guide

Kamehameha Scanner offers flexibility for both GUI lovers and CLI power users.

### 1. Interactive Menu (Beginner Friendly)

The easiest way to start a scan without memorizing commands.

```bash
sudo python3 master.py

```

* **[1] Full Scan:** Runs the complete workflow (Recon -> Crawl -> Scan -> Report).
* **[2] Specific Module:** Choose a single vulnerability category (e.g., just XSS).
* **[3] Gather Targets:** Use Dorking/Indexing to find targets.
* **[4] Mass Scan:** Scan a list of URLs collected from crawling.

### 2. Web GUI Dashboard

Launch a local web server to monitor scans visually.

```bash
sudo python3 master-gui.py

```

*Open your browser at the displayed address (usually `http://localhost:8000`).*

### 3. Advanced CLI Arguments (For Developers/Automation)

You can bypass the menu and run the scanner directly with specific flags using `misc/tools.py`.

**Basic Syntax:**

```bash
python3 misc/tools.py [TARGET_URL] [OPTIONS]

```

**Common Examples:**

* **Perform a Deep Security Assessment (Active Scan):**
```bash
python3 misc/tools.py [https://example.com](https://example.com) --deep-scan --full-port-scan --yes

```


* **Scan Only for Specific Vulnerabilities:**
```bash
python3 misc/tools.py [https://example.com](https://example.com) --modules xss,sqli,lfi

```
```
xss, sqli, ssti, lfi, rfi, crlf, command_injection, xxe, nosql_injection, ssrf, ssrf_internal, open_redirect, csrf, idor, file_upload, cors, graphql, default_creds, oauth, security_headers, waf_bypass, api_leakage, jwt, prototype_pollution, session_fixation, api_token_leak
```


* **Anonymous Scan via Tor:**
```bash
python3 misc/tools.py [https://example.com](https://example.com) --use-tor --cf-bypass

```



**Full Argument Reference:**

| Argument | Description |
| --- | --- |
| `url` | **Required.** The target URL (e.g., `https://target.com`). |
| `--deep-scan` | Enables Playwright crawling & database backup file hunting. |
| `--modules` | Run specific modules only. Comma-separated (e.g., `xss,sqli,ssrf`). |
| `--no-ports` | Disable Nmap port scanning (faster, less noisy). |
| `--full-port-scan` | Run Nmap on all 65,535 ports (default is top 100). |
| `--cf-bypass` | Attempt to bypass Cloudflare/WAF protection. |
| `--use-tor` | Route traffic through Tor (SOCKS5 on port 9050). |
| `--bruteforce-username` | Specify a username for login bruteforce (default: `admin`). |
| `--bruteforce-wordlist` | Path to a custom password wordlist. |
| `--cookie` | Provide an authenticated session cookie (e.g., `JSESSIONID=...`). |
| `--proxy` | Use a custom HTTP proxy (e.g., `http://127.0.0.1:8080` for Burp). |
| `--dry-run` | Perform reconnaissance only (no active attacks). |

---

## 📂 Project Structure

```text
kamehameha/
├── master.py           # Main CLI Controller (Entry Point)
├── master-gui.py       # Main GUI Controller (Web Interface)
├── install.sh          # Universal Installer Script
├── requirements.txt    # Python Dependencies
├── misc/
│   ├── tools.py        # Core Logic Engine (Scanner Class)
│   ├── config.json     # Configuration (User-Agents, Paths)
│   ├── downloader.py   # Proxy downloader
│   └── ...
├── payloads/           # Attack dictionaries (Wordlists, Dorks, Payloads)
└── report/             # Output Directory (HTML, JSON, CSV Reports)

```

---

## ⚠️ Legal Disclaimer

**This tool is developed for educational purposes and authorized security assessments only.**

The developer of Kamehameha Scanner disclaims any responsibility for misuse or damage caused by this program.

* **Do not** use this tool on systems you do not own or have explicit written permission to test.
* **Do not** use this tool on government or military infrastructure without authorization.
* You are responsible for adhering to all local and international laws regarding cybersecurity (e.g., CFAA in the US, UU ITE in Indonesia).

---

## 🤝 Credits & Acknowledgements

**Kamehameha Scanner** is a custom framework that stands on the shoulders of giants. Special thanks to:

* **ProjectDiscovery** for `nuclei`, `subfinder`, and `httpx`.
* **Microsoft** for `Playwright`.
* The Open Source Security Community.

---

<p align="center">
Made with ❤️ for <b>Securing the Web</b>
</p>

```
btxcode
```
