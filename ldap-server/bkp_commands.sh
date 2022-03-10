cat /etc/scripts/bkp_commands.sh


#!/bin/bash

slapcat -n 0 -l /home/backup/config.ldif
slapcat -n 1 -l /home/backup/data.ldif

# Print end status message.
echo "Backup finished"
