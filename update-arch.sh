#!/bin/bash

# Make executable: sudo chmod +x /usr/local/bin/update-arch.sh

LOGFILE="/var/log/arch_update.log"

echo "===== Update started at $(date) =====" >> "$LOGFILE"

# Update system including AUR
yay -Syu --noconfirm >> "$LOGFILE" 2>&1

# Reboot the system
echo "Rebooting system..." >> "$LOGFILE"
reboot

