#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Arham Jain | Roll: 24BAI10583
# Course: Open Source Software
# Description: Checks if Git is installed, shows its details,
#              and prints a philosophy note using a case statement

# --- Set the package to inspect ---
PACKAGE="git"

echo "========================================"
echo "   FOSS Package Inspector"
echo "   Checking package: $PACKAGE"
echo "========================================"
echo ""

# --- Check if package is installed using if-then-else ---
if command -v $PACKAGE &>/dev/null; then
    echo "[+] $PACKAGE is INSTALLED on this system."
    echo ""

    # --- Get version info ---
    VERSION=$(git --version)
    echo "  Version   : $VERSION"

    # --- Get install location ---
    LOCATION=$(which git)
    echo "  Location  : $LOCATION"

    # --- Get package details if dpkg is available ---
    if command -v dpkg &>/dev/null; then
        echo ""
        echo "  Package details (dpkg):"
        dpkg -l git 2>/dev/null | grep "^ii" | awk '{print "  Installed: "$2, "| Version:", $3}'
    fi

else
    echo "[-] $PACKAGE is NOT installed on this system."
    echo "    To install, run: sudo apt install git"
fi

echo ""
echo "----------------------------------------"
echo "  Philosophy Note:"
echo "----------------------------------------"

# --- Case statement to print philosophy based on package name ---
case $PACKAGE in
    git)
        echo "  Git: Born out of frustration with proprietary"
        echo "  tools, Linus Torvalds built Git in 10 days."
        echo "  It is now the backbone of all modern software"
        echo "  development — free, open, and unstoppable."
        ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet."
        echo "  Powers nearly 30% of all websites globally."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps."
        echo "  A dual-license story of community vs commerce."
        ;;
    vlc)
        echo "  VLC: Built by students in Paris — plays anything."
        echo "  A symbol of what community-driven software can do."
        ;;
    firefox)
        echo "  Firefox: A nonprofit fighting for an open web."
        echo "  Proof that community can challenge corporate giants."
        ;;
    python3|python)
        echo "  Python: A language shaped entirely by its community."
        echo "  From scripting to AI — open source at every level."
        ;;
    *)
        echo "  This is an open-source tool — free to use,"
        echo "  study, modify, and share with the world."
        ;;
esac

echo "----------------------------------------"
