#!/bin/sh

#
# Rajarshi Das
# Updated: 25-Feb-2022
#

# Get driveNo
if [ $# -eq 0 ]
  then
    echo "Error.\nUsage: Enter <driveNo> as input\n"
    exit 1
fi

driveNo=$1
dateToday=$(date +"%F %R")

# Incremental Copy the files from beluga
rsync -az root@beluga:/beluga-data/${driveNo}/ /tank/beluga-backup/${driveNo}/

# Log 
echo "Drive No: ${driveNo} | Start at: ${dateToday} | End at: $(date +'%F %R')"
# End
