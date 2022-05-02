#!/bin/bash
####################################
#
# Backup to Ldap-Config and Data.
#
####################################

# Server IP/Hostname.
host="ldap1.mXXXX.ac.in"

# What to backup.
backup_files1="/home/backup/config.ldif"
backup_files2="/home/backup/data.ldif"

# Where to backup to.
dest="/home/backup/ldap_backup"

# Create archive filename.
date=$(date "+%d-%m-%Y")
archive_file="$date"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date

# Backup the files using tar.
#tar czf $dest/$archive_file $backup_files
#rsync -zvh ldap1.manit.ac.in:/root/backup/config.ldif /home/backup/ldap_backup/
rsync -zvh $host:$backup_files1 $dest/$archive_file/
rsync -zvh $host:$backup_files2 $dest/$archive_file/

# Print end status message.
echo "Backup finished"

# Long listing of files in $dest to check file sizes.
#ls -lh $dest
