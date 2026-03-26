#!/bin/bash
# Script 1: System Identity Report
# Author: Arham Jain | Roll: 24BAI10583
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Arham Jain"
ROLL_NO="24BAI10583"
SOFTWARE_CHOICE="Git"

# --- Gather system info using command substitution ---
KERNEL=$(uname -r)
USER_NAME=$(id -un)
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y, %I:%M %p')
HOME_DIR=$HOME

# --- Get distro name safely ---
if [ -f /etc/os-release ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Linux (distro info unavailable)"
fi

# --- Display welcome screen ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Roll Number    : $ROLL_NO"
echo "========================================"
echo ""
echo "  Software Choice : $SOFTWARE_CHOICE"
echo "  Linux Distro    : $DISTRO"
echo "  Kernel Version  : $KERNEL"
echo "  Logged-in User  : $USER_NAME"
echo "  Home Directory  : $HOME_DIR"
echo "  System Uptime   : $UPTIME"
echo "  Date and Time   : $DATE"
echo ""
echo "----------------------------------------"
echo "  OS License: The Linux kernel is"
echo "  licensed under GNU General Public"
echo "  License v2 (GPL v2) — giving users"
echo "  the freedom to run, study, share"
echo "  and modify the software freely."
echo "----------------------------------------"
