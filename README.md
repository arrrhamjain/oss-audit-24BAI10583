# OSS Audit — Git
## Open Source Software Course Project
**Student Name:** Arham Jain
**Roll Number:** 24BAI10583
**Course:** Open Source Software
**Software Audited:** Git
**License:** GPL v2

---

## About This Project
This repository contains the shell scripts for the Open Source Audit
capstone project. The project audits Git — the world's most widely
used open source version control system, created by Linus Torvalds
in 2005 and licensed under GPL v2.

---

## Scripts

### script1.sh — System Identity Report
Displays system information like a welcome screen including kernel
version, distro, uptime, logged-in user, and the OS license.
**Run:**
```bash
bash script1.sh
```

### script2.sh — FOSS Package Inspector
Checks if Git is installed, displays its version and location,
and prints a philosophy note using a case statement.
**Run:**
```bash
bash script2.sh
```

### script3.sh — Disk and Permission Auditor
Loops through key system directories using a for loop and reports
permissions, ownership, and disk usage for each.
**Run:**
```bash
bash script3.sh
```

### script4.sh — Log File Analyzer
Reads a log file line by line, counts occurrences of a keyword,
and prints the last 5 matching lines.
**Run:**
```bash
bash script4.sh
```
Optional custom usage:
```bash
bash script4.sh /var/log/syslog error
```

### script5.sh — Open Source Manifesto Generator
Asks the user 3 interactive questions and generates a personalised
open source philosophy statement saved to a .txt file.
**Run:**
```bash
bash script5.sh
```

---

## Dependencies
- Bash (version 4+)
- Git installed on the system
- Standard Linux utilities: uname, uptime, df, du, ls, grep, awk

## How to Run on Linux
1. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/oss-audit-24BAI10583
```
2. Navigate to the folder:
```bash
cd oss-audit-24BAI10583
```
3. Give permission to scripts:
```bash
chmod +x *.sh
```
4. Run any script:
```bash
bash script1.sh
```
