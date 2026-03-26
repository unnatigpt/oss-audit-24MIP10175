#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Unnati Gupta | Course: Open Source Software
# Description: Asks the user 3 questions interactively and
#              generates a personal open source philosophy statement

# --- Alias concept demonstrated ---
# In a real session you could run: alias today='date +%d-%B-%Y'
# Here we use the date command directly for portability

echo "=============================="
echo " Open Source Manifesto Generator"
echo "=============================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Get user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# --- Define output file name ---
OUTPUT="manifesto_$(whoami).txt"

# --- Compose the manifesto paragraph ---
echo "" > $OUTPUT
echo "=============================="  >> $OUTPUT
echo " My Open Source Manifesto"      >> $OUTPUT
echo " Generated on: $DATE"           >> $OUTPUT
echo " Author: $AUTHOR"               >> $OUTPUT
echo "=============================="  >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source." >> $OUTPUT
echo "Every day I rely on $TOOL — a tool built freely and shared openly by developers around the world." >> $OUTPUT
echo "To me, freedom means $FREEDOM — and that is exactly what open source represents." >> $OUTPUT
echo "It is the freedom to use, study, modify and share software without restriction." >> $OUTPUT
echo "" >> $OUTPUT
echo "One day I plan to build $BUILD and release it to the world for free." >> $OUTPUT
echo "Because knowledge grows when it is shared, not when it is locked away." >> $OUTPUT
echo "Standing on the shoulders of giants like Linus Torvalds and Richard Stallman," >> $OUTPUT
echo "I commit to giving back to the community that gave so much to me." >> $OUTPUT
echo "" >> $OUTPUT
echo "Open source is not just a license. It is a philosophy. It is a movement. It is the future." >> $OUTPUT
echo "=============================="  >> $OUTPUT

# --- Display the manifesto ---
echo ""
echo "Your manifesto has been saved to: $OUTPUT"
echo ""
cat $OUTPUT
