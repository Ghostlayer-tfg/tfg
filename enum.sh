#!/bin/bash

echo "================================="
echo "  Linux Enumeration Script"
echo "  Author: Shohobiddin"
echo "================================="
echo

# Current user
echo "[+] Current User:"
whoami
echo

# User ID info
echo "[+] User ID info:"
id
echo

# System info
echo "[+] System Information:"
uname -a
echo

# Users on system
echo "[+] Users on the system:"
cut -d: -f1 /etc/passwd
echo

# SUID files
echo "[+] SUID files (this may take time):"
find / -perm -4000 2>/dev/null
echo

# Cron jobs
echo "[+] Cron jobs:"
ls -la /etc/cron* 2>/dev/null
echo

# Running processes (top 5 by CPU)
echo "[+] Top 5 CPU consuming processes:"
ps aux --sort=-%cpu | head -n 6
echo

echo "========== Enumeration Finished =========="
