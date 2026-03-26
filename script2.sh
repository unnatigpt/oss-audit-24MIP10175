#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Unnati | Course: Open Source Software
# Description: Checks if Git is installed, shows version and license info

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if package is installed ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "=============================="
    echo " FOSS Package Inspector"
    echo "=============================="
    echo ""
    echo "$PACKAGE is installed on this system."
    echo ""
    # --- Show version and license info ---
    echo "Package Details:"
    echo "----------------"
    dpkg -l $PACKAGE | grep -E 'ii' | awk '{print "Package: " $2 "\nVersion: " $3}'
    echo ""
    echo "License: GPL v2"
    echo "Maintainer: Junio C Hamano and contributors"
else
    echo "$PACKAGE is NOT installed."
    echo "Install it using: sudo apt install $PACKAGE"
fi

# --- Philosophy note based on package name ---
echo ""
echo "Philosophy Note:"
echo "----------------"
case $PACKAGE in
    git)
        echo "Git: Born out of frustration with proprietary tools."
        echo "Linus Torvalds built Git in just 10 days in 2005."
        echo "It is now the backbone of all modern software development." ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet." ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps." ;;
    firefox)
        echo "Firefox: A nonprofit browser fighting for an open web." ;;
    vlc)
        echo "VLC: Built by students, plays anything, owned by no one." ;;
    *)
        echo "$PACKAGE: A proud member of the open source ecosystem." ;;
esac
echo "=============================="
