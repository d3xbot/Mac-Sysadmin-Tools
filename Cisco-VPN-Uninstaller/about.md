# Cisco VPN client uninstaller
Cisco's AnyConnect and Secure Client VPN apps can be a bit finnicky to troubleshoot - sometimes requiring a more complete removal than their uninstall script in /opt will do. Maybe you've got a Mac that's had its Library folder moved via Migration Assistant across several generations of Mac and Cisco's old cruft remains. Maybe you've got a Mac where the user said "Hey! I remember needing this truly ancient version of Cisco's VPN client" and installed the broken old thing on their own. Maybe you had an update go bad and now you can't do a clean install because of a package receipt error.

Whatever ails your Cisco VPN client installation, this'll clean it out and pave the way for a fresh, clean install.

Thanks to [this MIT Knowledge Base article](http://kb.mit.edu/confluence/display/mitcontrib/Cisco+Anyconnect+Manual+uninstall+Mac+OS) for info on some of the older components' locations and their general uninstall recommendations!

## Important info:
This script is intended to be run with sudo privileges or as MDM agent

This script will delete the Cisco folder from /Applications. If you install any other applications there, I recommend commenting out lines 22-28
