#!/bin/sh

# Fetch Backup files
rsync -az rd@porcupine:/home/rd/backup/current/ /home/rd/porcupine/

# Set permissions
sudo chown -R rd:rd /home/rd/porcupine
find /home/rd/porcupine \( -type d -exec chmod 755 {} \; \) -o \( -type f -exec chmod 644 {} \; \)

# Logging
echo $(date +'%F %R')" | Backup Porcupine"

