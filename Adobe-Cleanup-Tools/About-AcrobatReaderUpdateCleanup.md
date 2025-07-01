# Acrobat Reader Update Cleanup
Something I've noticed recently, but that seems to have been going on for quite some time, is that Adobe Acrobat Reader's auto-update system tends to put previous versions in `/private/var/root/.Trash` - a folder that doesn't get emptied when users empty their trash can.
If left untreated, this will happily gobble up tens of gigabytes on a user's SSD - a nightmare if they have 256 GB or smaller disks.

The solution: Empty Root's trash by force!
Since we're doing an `rm -r` command with a `*`, I wanted to make sure to operate SOLELY on the root trash directory and used exact paths (no symlinks).


## Important info:
This script is intended to be run with sudo privileges or as MDM agent, as it operates on files owned by root.
