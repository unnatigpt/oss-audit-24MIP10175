#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Unnati Gupta | Course: Open Source Software
# Description: Loops through system directories and reports
#              permissions, owner, and size of each

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================="
echo " Disk and Permission Auditor"
echo "=============================="
echo ""

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner and group using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get human readable size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Size      : $SIZE"
        echo "----------------------------"
    else
        echo "$DIR does not exist on this system"
        echo "----------------------------"
    fi
done

# --- Check Git's config directory specifically ---
echo ""
echo "Git Config Directory Check:"
echo "---------------------------"
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    echo "Git config file found at: $GIT_CONFIG"
    ls -lh $GIT_CONFIG
else
    echo "No Git config file found at $GIT_CONFIG"
fi
echo "=============================="
