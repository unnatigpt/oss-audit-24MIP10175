#!/bin/bash
# Script 1: System Identity Report
# Author: Unnati Gupta | Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Unnati Gupta"
ROLL_NUMBER="24MIP10175"
SOFTWARE_CHOICE="Git"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date '+%d %B %Y %H:%M:%S')
DISTRO=$(lsb_release -d | cut -f2)

# --- Display welcome screen ---
echo "=================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "   Roll Number: $ROLL_NUMBER"
echo "   Software: $SOFTWARE_CHOICE"
echo "=================================="
echo ""
echo "System Information:"
echo "-------------------"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE"
echo ""
echo "License Info:"
echo "-------------"
echo "Ubuntu Linux is licensed under GPL v2."
echo "Git is licensed under GPL v2."
echo "Both grant the four freedoms of free software."
echo "=================================="

