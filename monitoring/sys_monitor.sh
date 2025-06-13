#This is copied from chatgpt to ensure what is gonna happen. 
#!/bin/bash

echo "===== System Monitor ====="
echo "Date & Time: $(date)"
echo "Hostname: $(hostname)"
echo

# CPU load
echo "--- CPU Load ---"
uptime
echo

# Memory usage
echo "--- Memory Usage ---"
free -h
echo

# Disk usage
echo "--- Disk Usage ---"
df -h /
echo

# Uptime
echo "--- Uptime ---"
who -b
uptime -p

