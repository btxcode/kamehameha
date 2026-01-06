#!/bin/bash

# Warna untuk output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Kamehameha Scanner Universal Installer ===${NC}"

# 1. Cek apakah user adalah root
if [ "$EUID" -ne 0 ]; then 
  echo -e "${RED}[!] Harap jalankan script ini sebagai root (sudo ./install.sh)${NC}"
  exit
fi

# 2. Deteksi OS dan Install System Dependencies (Nmap, Go, Python-pip, Git)
echo -e "${YELLOW}[+] Mendeteksi Sistem Operasi...${NC}"

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
    echo -e "${GREEN}[+] OS Terdeteksi: $OS${NC}"
    
    echo -e "${YELLOW}[+] Menginstall System Dependencies (Go, Nmap, Git)...${NC}"
    if [[ "$ID" == "debian" || "$ID" == "ubuntu" || "$ID" == "kali" || "$ID_LIKE" == *"debian"* ]]; then
        apt-get update
        apt-get install -y python3-pip git nmap golang-go libpcap-dev
    elif [[ "$ID" == "arch" || "$ID_LIKE" == *"arch"* ]]; then
        pacman -Sy --noconfirm python-pip git nmap go
    elif [[ "$ID" == "fedora" || "$ID" == "centos" || "$ID" == "rhel" ]]; then
        dnf install -y python3-pip git nmap golang
    elif [[ "$ID" == "alpine" ]]; then
        apk add python3 py3-pip git nmap go
    else
        echo -e "${RED}[!] OS tidak dikenali secara otomatis. Harap install Nmap dan Go secara manual.${NC}"
    fi
else
    echo -e "${RED}[!] Tidak dapat mendeteksi OS. Lanjut mencoba install Python libs...${NC}"
fi

# 3. Setup Direktori Go (Penting untuk Nuclei/Subfinder)
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:~/go/bin' >> ~/.zshrc

# 4. Install Tools Eksternal (Nuclei, Subfinder, Httpx) menggunakan Go
echo -e "${YELLOW}[+] Menginstall Alat Eksternal via Go (Nuclei, Subfinder, Httpx)...${NC}"

if command -v go &> /dev/null; then
    go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    echo -e "${GREEN}[+] ProjectDiscovery tools berhasil diinstall!${NC}"
else
    echo -e "${RED}[!] Go-lang gagal diinstall. Nuclei/Subfinder tidak dapat diinstall otomatis.${NC}"
fi

# 5. Install SQLMap (Manual Git Clone agar works di semua distro)
echo -e "${YELLOW}[+] Menginstall SQLMap...${NC}"
if [ ! -d "/opt/sqlmap" ]; then
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap
    ln -sf /opt/sqlmap/sqlmap.py /usr/local/bin/sqlmap
    echo -e "${GREEN}[+] SQLMap berhasil diinstall di /opt/sqlmap${NC}"
else
    echo -e "${GREEN}[+] SQLMap sudah terinstall.${NC}"
fi

# 6. Install Python Requirements
echo -e "${YELLOW}[+] Menginstall Python Libraries...${NC}"
# Hapus Wappalyzer dari requirements jika ada, karena sering error
if [ -f "requirements.txt" ]; then
    # Menggunakan flag --break-system-packages untuk distro modern (Ubuntu 24.04/Kali 2024)
    pip3 install -r requirements.txt --break-system-packages 2>/dev/null || pip3 install -r requirements.txt
else
    echo -e "${RED}[!] File requirements.txt tidak ditemukan!${NC}"
fi

# 7. Install Playwright Browsers
echo -e "${YELLOW}[+] Menginstall Playwright Browsers...${NC}"
# Export variable untuk bypass validasi distro (penting untuk Kali Linux)
export PLAYWRIGHT_SKIP_VALIDATE_HOST_REQUIREMENTS=true
playwright install chromium
playwright install-deps

# 8. Fix Permissions
echo -e "${YELLOW}[+] Mengatur izin eksekusi...${NC}"
chmod +x master.py
chmod +x misc/tools.py

echo -e "\n${GREEN}===============================================${NC}"
echo -e "${GREEN}   INSTALASI KAMEHAMEHA SCANNER SELESAI!   ${NC}"
echo -e "${GREEN}===============================================${NC}"
echo -e "Cara menjalankan:"
echo -e "  1. CLI: ${YELLOW}sudo python3 master.py${NC}"
echo -e "  2. GUI: ${YELLOW}sudo python3 master-gui.py${NC}"
echo -e "\n${RED}Catatan:${NC} Jika terjadi error 'command not found' untuk nuclei/subfinder,"
echo -e "Jalankan perintah ini: ${YELLOW}source ~/.bashrc${NC} atau ${YELLOW}source ~/.zshrc${NC}"
