# OSS Capstone Project — Open Source Audit

**Student Name:** Unnati Gupta 
**Roll Number:** 24MIP10175  
**Course:** Open Source Software  
**Chosen Software:** Git  

---

## About This Project
This project is a structured audit of Git — one of the most important
open source tools ever created. It covers the origin story, license 
analysis, Linux footprint, ecosystem mapping, and a comparison with 
proprietary alternatives.

---

## Scripts

| Script | Description |
|--------|-------------|
| script1.sh | System Identity Report — displays system info |
| script2.sh | FOSS Package Inspector — checks if Git is installed |
| script3.sh | Disk and Permission Auditor — audits system directories |
| script4.sh | Log File Analyzer — counts keywords in log files |
| script5.sh | Manifesto Generator — generates open source philosophy |

---

## How to Run the Scripts

### Requirements
- Linux system or WSL2 on Windows
- Git installed (`sudo apt install git`)
- Bash shell

### Steps

**1. Clone the repository:**
```bash
git clone https://github.com/unnatigpt/oss-audit-24MIP10175.git
cd oss-audit-24MIP10175
```

**2. Make scripts executable:**
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**3. Run each script:**
```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/dpkg.log install
./script5.sh
```

---

## Dependencies
- `bash` — available by default on all Linux systems
- `git` — install with `sudo apt install git`
- `lsb-release` — install with `sudo apt install lsb-release`
- `dpkg` — available by default on Ubuntu/Debian systems
