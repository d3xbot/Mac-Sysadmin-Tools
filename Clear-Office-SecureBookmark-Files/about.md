# Clear Office SecureBookmarks files
## Important Info
This script is designed for use with Jamf Pro, using $3 for logged in user.

If using this script through Agents other than Jamf -or- running the script directly, you may want to substitute the $3 variable for something else

## What are Office SecureBookmarks and why do I need to clear them?
Office SecureBookmarks files are where Word, PowerPoint, and Excel store the unified Recent Files list showing On My Computer and Online files. Occasionally, these SecureBookmarks files can get corrupted. This usually presents as the file list on the Welcome/New from Template screen showing up but never updating -and- throwing an error that the file was not found when you try to open a recent file.

This script clears out all these SecureBookmarks files to enable users to access this feature.

Note: you may want to take a screenshot of the recents lists in Word, PowerPoint, and Excel if you rely on that for file organization. 
