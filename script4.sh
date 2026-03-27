#!/bin/bash
# Script 4: Log File Analyzer
# Author: Arham Jain | Roll: 24BAI10583
# Course: Open Source Software
# Description: Reads a log file line by line, counts keyword
#              occurrences, and prints a summary with last 5 matches
# Usage: ./script4.sh [logfile] [keyword]

# Accept log file and keyword from command line arguments
LOGFILE=${1:-"/var/log/dpkg.log"}   # Default log file
KEYWORD=${2:-"error"}               # Default keyword is 'error'
COUNT=0                             # Counter variable

echo "========================================"
echo "   Log File Analyzer"
echo "========================================"
echo ""
echo "  Log File : $LOGFILE"
echo "  Keyword  : $KEYWORD"
echo ""

# Check if log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "  [!] File '$LOGFILE' not found."
    echo "      Creating a sample log file for demonstration..."
    echo ""

    # Create a sample log file for demo purposes
    LOGFILE="/tmp/sample_git.log"
    cat > "$LOGFILE" << 'LOGEOF'
2025-03-01 10:00:01 INFO  Git initialized repository successfully
2025-03-01 10:01:05 ERROR Could not connect to remote origin
2025-03-01 10:02:10 INFO  Commit abc123 added to branch main
2025-03-01 10:03:15 WARNING Merge conflict detected in file main.py
2025-03-01 10:04:20 ERROR Authentication failed for remote push
2025-03-01 10:05:25 INFO  Pull request merged successfully
2025-03-01 10:06:30 ERROR Repository not found at given URL
2025-03-01 10:07:35 INFO  Branch feature-x created from main
2025-03-01 10:08:40 WARNING Detached HEAD state entered
2025-03-01 10:09:45 ERROR Permission denied: cannot write to /etc/git
2025-03-01 10:10:50 INFO  Tag v1.0 created and pushed
LOGEOF
    echo "  Sample log created at: $LOGFILE"
    KEYWORD="ERROR"
fi

echo "  Scanning file for keyword: '$KEYWORD'"
echo "----------------------------------------"

# While loop to read file line by line
while IFS= read -r LINE; do
    # If line contains the keyword (case insensitive), count it
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo ""
echo "  Result: Keyword '$KEYWORD' found $COUNT time(s)"
echo ""

# Print last 5 matching lines
echo "  Last 5 matching lines:"
echo "  ----------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5 | while read -r MATCH; do
    echo "  >> $MATCH"
done

echo ""
echo "========================================"
