#!/bin/sh
# source /tmp/ws/config.sh

# Timestamp


# make file to collect logs
time=$(date +%Y:%m:%d_%H:%M:%S)
file="logs_$time"
touch "$file"
{
echo "============================================================"
echo "============================================================"
echo "||                                                        ||"
echo "||                                                        ||"
echo "||          ---- System Health Check ------               ||"
echo "||                                                        ||"
echo "||       logs at $time                      ||"
echo "||                                                        ||"
echo "============================================================"
echo "============================================================"
echo "                                                            "
echo ""
echo "Hostname: $(hostname)"
echo ""
echo ""
echo "--- CPU Usage ---"
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
echo "Used: $CPU_USAGE %"
echo
echo
echo "--- Memory Usage ---"
free -m
echo
echo
echo "--- Disk Usage ---"
df -h
echo
echo 
echo "--- Top 5 Memory Consuming Processes ---"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo
echo
echo "--- Top 5 CPU Consuming Processes ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo
echo
echo "--- OS Version ---"
cat /etc/os-release | grep -E "PRETTY_NAME" | cut -d= -f2 | tr -d '"'
echo
echo
echo " --- Uptime ---"
uptime -p
echo
echo
echo "--- Load average ---"
uptime | awk -F"load average:" '{print$2}'
echo
echo
echo "--- Logged in user ---"
who
echo
echo
echo
echo
echo "---Completed---"
} > $file
echo "Report Generated at $file "