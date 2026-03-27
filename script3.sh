#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Arham Jain | Roll: 24BAI10583
# Course: Open Source Software
# Description: Loops through system directories and reports
#              permissions, ownership, and disk usage

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "   Disk and Permission Auditor"
echo "========================================"
echo ""
echo "  Auditing key system directories..."
echo ""
printf "  %-15s %-25s %-10s\n" "Directory" "Permissions/Owner" "Size"
echo "  -------------------------------------------------------"

# --- For loop to go through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3"/"$4}')
        # Get directory size, suppress permission errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "  %-15s %-15s %-10s %-10s\n" "$DIR" "$PERMS" "$OWNER" "$SIZE"
    else
        echo "  $DIR does not exist on this system"
    fi
done

echo ""
echo "----------------------------------------"
echo "  Checking Git config directory..."
echo "----------------------------------------"

# --- Check if Git's config directory/file exists ---
GIT_CONFIG="/etc/gitconfig"
GIT_USER_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "  System Git config found: $GIT_CONFIG"
    echo "  Permissions: $PERMS"
else
    echo "  No system-wide Git config at $GIT_CONFIG"
    echo "  (This is normal — Git config is usually per-user)"
fi

if [ -f "$GIT_USER_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_USER_CONFIG" | awk '{print $1, $3, $4}')
    echo ""
    echo "  User Git config found: $GIT_USER_CONFIG"
    echo "  Permissions: $PERMS"
else
    echo "  No user Git config at $GIT_USER_CONFIG yet"
    echo "  (Created when you run: git config --global user.name)"
fi

echo "========================================"
