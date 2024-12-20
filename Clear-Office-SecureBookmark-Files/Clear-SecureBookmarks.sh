#!/bin/zsh

echo "Clearing SecureBookmarks plists for $3"

if [[ -e /Users/$3/Library/Containers/com.microsoft.Word/Data/Library/Preferences/com.microsoft.Word.securebookmarks.plist ]]
then
    echo "Found Word Bookmarks. Clearing."
    rm /Users/$3/Library/Containers/com.microsoft.Word/Data/Library/Preferences/com.microsoft.Word.securebookmarks.plist
else
    echo "Word Bookmarks not found. Skipping."
fi

if [[ -e /Users/$3/Library/Containers/com.microsoft.Excel/Data/Library/Preferences/com.microsoft.Excel.securebookmarks.plist ]]
then
    echo "Found Excel Bookmarks. Clearing."
    rm /Users/$3/Library/Containers/com.microsoft.Excel/Data/Library/Preferences/com.microsoft.Excel.securebookmarks.plist
else
    echo "Excel Bookmarks not found. Skipping."
fi

if [[ -e /Users/$3/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences/com.microsoft.PowerPoint.securebookmarks.plist ]]
then
    echo "Found PowerPoint Bookmarks. Clearing."
    rm /Users/$3/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences/com.microsoft.PowerPoint.securebookmarks.plist
else
    echo "PowerPoint Bookmarks not found. Skipping."
fi

echo "Done"

exit 0
