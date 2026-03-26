#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Arham Jain | Roll: 24BAI10583
# Course: Open Source Software
# Description: Asks the user 3 questions interactively and
#              generates a personalised open source manifesto
#              saved to a .txt file

# --- alias concept demonstrated ---
# In a real shell session you could use: alias today='date +%d-%B-%Y'
# Here we use a variable to achieve the same result
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(id -un).txt"

echo "========================================"
echo "   Open Source Manifesto Generator"
echo "   For: Arham Jain | 24BAI10583"
echo "========================================"
echo ""
echo "  Answer three questions to generate"
echo "  your personal open source manifesto."
echo ""

# --- Read user input interactively ---
read -p "  1. Name one open-source tool you use every day: " TOOL
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "  3. Name one thing you would build and share freely: " BUILD

echo ""
echo "  Generating your manifesto..."
echo ""

# --- Compose manifesto and write to file using > and >> ---
echo "================================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "        Arham Jain | 24BAI10583" >> "$OUTPUT"
echo "        $DATE" >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in the power of open source." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool built not" >> "$OUTPUT"
echo "by a corporation for profit, but by a community" >> "$OUTPUT"
echo "of people who believed that knowledge should be" >> "$OUTPUT"
echo "free. To me, freedom means $FREEDOM. That is the" >> "$OUTPUT"
echo "same freedom that open source gives every developer" >> "$OUTPUT"
echo "on this planet — the freedom to read, change, and" >> "$OUTPUT"
echo "share the tools they depend on." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I will build $BUILD and release it openly" >> "$OUTPUT"
echo "for anyone to use, learn from, and improve. Because" >> "$OUTPUT"
echo "the greatest software ever written — Linux, Git," >> "$OUTPUT"
echo "Python, Firefox — was not locked away. It was shared." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "That is the open source way. That is my way." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Signed: Arham Jain" >> "$OUTPUT"
echo "Date  : $DATE" >> "$OUTPUT"
echo "================================================" >> "$OUTPUT"

# --- Display the manifesto ---
echo "  ✓ Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
