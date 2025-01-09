#!/bin/bash

# Run the Cisco-provided uninstall script
if [[ -e /opt/cisco/vpn/bin/vpn_uninstall.sh ]]
then
	/opt/cisco/vpn/bin/vpn_uninstall.sh
    echo "running Anyconnect uninstaller"
elif [[ -e /opt/cisco/anyconnect/bin/vpn_uninstall.sh ]]
	then /opt/cisco/anyconnect/bin/vpn_uninstall.sh
    echo "running Anyconnect uninstaller"
elif [[ -e /opt/cisco/secureclient/bin/vpn_uninstall.sh ]]
	then /opt/cisco/secureclient/bin/vpn_uninstall.sh
	echo "running Secure Client uninstaller"
else
	echo "Cisco uninstaller does not exist in /opt"
fi

# Remove Cisco folder from Applications
#############
### Note: ### If you install any other Cisco utilities to /Applications/Cisco as a custom path -or- as those applications' default path, I recommend commenting this section out.
#############
if [[ -d /Applications/Cisco ]]
then
	rm -r /Applications/Cisco
	echo "Removed Cisco folder from /Applications"
else
	echo "Cisco folder not found in /Applications"
fi

# Remove the Cisco VPN folders from /opt
# Not removing /opt/cisco itself, as other components for other apps (e.g.: Secure Endpoint/AMP) live here
if [[ -d /opt/cisco/vpn ]]
then
	rm -r /opt/cisco/vpn
    echo "Removed /opt/cisco/vpn"
else
	echo "/opt/cisco/vpn not found"
fi

if [[ -d /opt/cisco/AnyConnect ]]
then
	rm -r /opt/cisco/AnyConnect
    echo "Removed /opt/cisco/AnyConnect"
else
	echo "/opt/cisco/AnyConnect not found"
fi

if [[ -d /opt/cisco/secureclient ]]
then
	rm -r /opt/cisco/secureclient
	echo "Removed /opt/cisco/secureclient"
else
	echo "/opt/cisco/secureclient not found"
fi


# Remove well-known preference files
if [[ -e /Library/LaunchAgents/com.cisco.anyconnect.gui.plist ]]
then
	rm /Library/LaunchAgents/com.cisco.anyconnect.gui.plist
    echo "Removed launch agent"
else
	echo "Launch Agent not found"
fi

if [[ -e $3/Library/Preferences/com.cisco.anyconnect.gui.plist ]]
then
	rm $3/Library/Preferences/com.cisco.anyconnect.gui.plist
    echo "removed settings"
else
	echo "settings not found"
fi

# Remove PKG files per MIT suggestions
if [[ -e /private/etc/opt/cisco-vpnclient ]]
then
	rm -rf /private/etc/opt/cisco-vpnclient
    rm -rf /Library/Receipts/vpnclient-api.pkg
    rm -rf /Library/Receipts/vpnclient-bin.pkg
    rm -rf /Library/Receipts/vpnclient-gui.pkg
    rm -rf /Library/Receipts/vpnclient-profiles.pkg
    echo "Removed packages per MIT"
else
	echo "MIT Packages not found"
fi

# Forget package receipt to prevent package receipt issues on reinstall
pkgutil --forget com.cisco.pkg.anyconnect.vpn

exit 0
