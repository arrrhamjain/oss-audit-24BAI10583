# 🐧 The Open Source Audit — Git

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?style=flat&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-GPL_v2-red?style=flat)
![Course](https://img.shields.io/badge/Course-Open_Source_Software_Linux_Administration-teal?style=flat)

---

## 👨‍🎓 Student Details

| Field | Details |
|---|---|
| **Name** | Arham Jain |
| **Registration Number** | 24BAI10583 |
| **University** | VIT Bhopal University |
| **Course** | Open Source Software (LINUX ADMINISTRATION) |
| **Faculty** | RAJIT NAIR |
| **Semester** | B.Tech 5th Semester (Winter Semester 2025-26) |

---

## 📖 Project Description

This is my capstone project for the Open Source Software(LINUX ADMINISTRATION) course at VIT Bhopal University. I chose **Git** as my focus software — the world's most widely used distributed version control system, created by Linus Torvalds in April 2005 and licensed under the GNU General Public License v2 (GPL v2).

The project covers the origin story and philosophy of Git (including the dramatic BitKeeper incident that led to its creation), its Linux footprint, the broader FOSS ecosystem it belongs to, and a detailed comparison with proprietary version control alternatives. It also includes five practical bash scripts that demonstrate key Linux concepts from Units 1–5.

This repository contains all five shell scripts and supporting materials.

---

## 🛠️ Scripts Overview

| File | Description | Key Concepts |
|---|---|---|
| `script1.sh` | Generates a system identity report: distro, kernel, uptime, logged-in user, home directory, and a license note about the OS. | Variables, command substitution `$()`, echo formatting |
| `script2.sh` | Checks whether Git is installed using `command -v`, then prints version info, install location, and a FOSS philosophy note via a `case` statement. | `if-else`, `case`, `dpkg`, `grep`, `awk` |
| `script3.sh` | Loops through key system directories and reports permissions, ownership, and disk usage. Also checks for the Git config file. | `for` loop, arrays, `ls -ld`, `awk`, `du`, `cut` |
| `script4.sh` | Takes a log file and optional keyword as arguments, counts matching lines, and prints the last 5 matches. Creates a sample Git log if no file is found. | `$1`/`$2`, default values, `while read`, file tests, `grep`, `tail` |
| `script5.sh` | Interactively asks three questions, then assembles and saves a personalized open-source manifesto to a `.txt` file. | `read`, file redirection `>` and `>>`, command substitution |

---

## 🚀 How to Run the Scripts

### Step 1 — Clone the repository

```bash
git clone https://github.com/arrrhamjain/oss-audit-24BAI10583.git
cd oss-audit-24BAI10583
```

### Step 2 — Make all scripts executable

```bash
chmod +x *.sh
```

### Step 3 — Run individual scripts

**Scripts 1, 2, 3, and 5** (run directly):

```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script5.sh
```

**Script 4** (can optionally take a log file and keyword as arguments):

```bash
# Run with default log file and keyword
bash script4.sh

# Search for a specific keyword in a log file
bash script4.sh /var/log/syslog error

# Use any custom log file
bash script4.sh ~/mylog.txt warning
```

---

## 💻 Requirements

- A Linux-based operating system (tested on Ubuntu 24.04)
- Bash shell (version 4.x or later)
- Git installed on the system
- Standard GNU core utilities: `awk`, `grep`, `cut`, `du`, `ls`, `uptime`

---

## 📋 Sample Output — Script 1

```
========================================
   Open Source Audit — Arham Jain
   Roll Number    : 24BAI10583
========================================

  Software Choice : Git
  Linux Distro    : Ubuntu 24.04 LTS
  Kernel Version  : 6.8.0-71-generic
  Logged-in User  : arham
  Home Directory  : /home/arham
  System Uptime   : up 2 hours, 30 minutes
  Date and Time   : 27 March 2026, 10:00 AM

----------------------------------------
  OS License: The Linux kernel is
  licensed under GNU General Public
  License v2 (GPL v2) — giving users
  the freedom to run, study, share
  and modify the software freely.
----------------------------------------
```

---

## 📁 Repository Structure

```
oss-audit-24BAI10583/
├── script1.sh       # Script 1: System Identity Report
├── script2.sh       # Script 2: FOSS Package Inspector
├── script3.sh       # Script 3: Disk and Permission Auditor
├── script4.sh       # Script 4: Log File Analyzer
├── script5.sh       # Script 5: Open Source Manifesto Generator
└── README.md        # This file
```

---

## 📚 Software Analyzed: Git

**Git** is a free and open-source distributed version control system created by Linus Torvalds in April 2005. It was built out of necessity after the Linux kernel team lost access to the proprietary BitKeeper tool. Linus built Git in just 10 days, and it has since become the universal standard for version control used by developers worldwide.

Key facts:
- **License:** GNU General Public License v2 (GPL v2)
- **Created by:** Linus Torvalds (April 2005)
- **Current Maintainer:** Junio C. Hamano
- **Written in:** C, Shell, Perl
- **Platforms:** Linux, Windows, macOS
- **Used by:** GitHub, GitLab, Bitbucket, and virtually every software project in the world

---

## 🎯 Key Takeaways

Working on this project gave me a much deeper understanding of how open-source software is born — not just from technical need, but from a philosophical belief that tools should be free and shared. The story of Git is a perfect example: Linus lost access to a proprietary tool overnight and responded by building something better and giving it to the world for free. The license analysis made me understand that GPL v2 is not just a legal document — it is a guarantee that Git can never be locked away. Writing the shell scripts made Linux concepts like permissions, file systems, and process management feel real and practical rather than theoretical.

---

## About

B.Tech 2nd Semester — Open Source Software Capstone (2026)
VIT Bhopal University
