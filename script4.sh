#!/bin/bash
# Script 4: Log File Analyzer
# Author: Unnati Gupta | Course: Open Source Software
# Description: Reads a log file line by line, counts keyword
#              occurrences and prints matching lines

# --- Accept log file and keyword as command line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error' if not provided
COUNT=0

# --- Check if a log file was provided ---
if [ -z "$LOGFILE" ]; then
    echo "=============================="
    echo " Log File Analyzer"
    echo "=============================="
    echo "Usage: ./script4.sh <logfile> <keyword>"
    echo "Example: ./script4.sh /var/log/dpkg.log error"
    exit 1
fi

# --- Check if the file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

echo "=============================="
echo " Log File Analyzer"
echo "=============================="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "----------------------------"

# --- Read file line by line and count keyword matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines ---
echo "Last 5 matching lines:"
echo "----------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=============================="
