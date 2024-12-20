Adobe Acrobat Pro ships with a Microsoft Office addin that causes a Visual Basic Runtime error. When users open Word or PowerPoint, they get the following popup - sometimes multiple times:

![Visual Basic for Applications Runtime Error '53'](https://github.com/d3xbot/Mac-Sysadmin-Tools/blob/main/Fix-Bad-Adobe-Addin-for-Office/adobe%20error.jpg)

I've tried to troubleshoot this by reinstalling Acrobat Pro, but that does not fix the issue. [This Adobe forum post](https://community.adobe.com/t5/acrobat-discussions/run-time-error-53-and-acrobat-freezing-up-not-responding-quot/td-p/10567310) suggested that users should manually remove the addin from each app with each Adobe update that reinstalls the addin. So my script does that automatically and prevents the current installed version of Acrobat from re-adding the addin.

[This Microsoft forum post](https://answers.microsoft.com/en-us/msoffice/forum/all/new-error-run-time-error-53-macpdfm/75a8a130-ad60-4ebd-8785-a0328de58134) and [this one an Adobe post linked to](https://answers.microsoft.com/en-us/msoffice/forum/all/run-time-error-53/e07ff014-d4dd-43c1-a901-e7fbd18d8e1b?page=1) also recommend deleting the addin, but going through the user Library to do so - that makes me feel more comfortable with the method I used in this script.
