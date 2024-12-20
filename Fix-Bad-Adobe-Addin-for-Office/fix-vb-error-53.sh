#!/bin/zsh

# Written by D3xbot

# Setup
# Set user/localized dirs
userAddinDir="/Users/$3/Library/Group Containers/UBF8T346G9.Office/User Content/Startup/"
localizedUserAddinDir="/Users/$3/Library/Group Containers/UBF8T346G9.Office/User Content.localized/Startup.localized/"

#set system-wide addins dir
sysWideAdobeAddinDir="/Library/Application Support/Adobe/MACPDFM"
sysWideMSAddinDir="/Library/Application Support/Microsoft/Office365/User Content.localized/Startup/"

# Set addin file names
wordAddin="Word/linkCreation.dotm"
excelAddin="Excel/SaveAsAdobePDF.xlam"
powerpointAddin="PowerPoint/SaveAsAdobePDF.ppam"

# Run
# Checks for file presence, deleting files upon success.
# Echoes output for admin troubleshooting

# Remove System-Wide Addin
if [[ -d $sysWideAdobeAddinDir ]]
then
	echo "System-Wide Addin Directory exists."
	rm -r $sysWideAdobeAddinDir
	echo "Removed System-Wide Adobe Addins!"
else
	echo "System-Wide Adobe Addin Directory does not exist."
	echo "Moving on."
fi

if [[ -d $sysWideMSAddinDir ]]
then
	echo "System-Wide Addin Directory exists."
	rm -r $sysWideMSAddinDir
	echo "Removed System-Wide Microsoft Addins"
else
	echo "System-Wide MS Addin Directory does not exist."
	echo "Moving on."
fi

# Remove User Addins
if [[ -d $userAddinDir ]]
then
	echo "User Addin Directory exists."
	echo "Removing User Addins..."
	cd $userAddinDir
	rm ./$wordAddin
	rm ./$excelAddin
	rm ./$powerpointAddin
	echo "Success!"
elif [[ -d $localizedUserAddinDir ]]
then
	echo "Localized User Addin Directory exists."
	echo "Removing Localized User Addins..."
	cd $localizedUserAddinDir
	rm ./$wordAddin
	rm ./$excelAddin
	rm ./$powerpointAddin
	echo "Success!"
else
	echo "Neither the User Addin directory nor the Localized User Addin directory exists!"
	echo "Manual intervention required!"
	exit 1
fi

exit 0
