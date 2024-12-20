# Why?
Do you use old-school screensavers like [these Mac ports of some ReallySlickScreensavers](http://s.sudre.free.fr/Software.html) or even just some of the old built-ins like Flurry and Arabesque?

Do you regularly have uptime >7 days?

Do you get weird laggy performance from time to time and just don't know why?

Well, neither macOS Sonoma nor Sequoia kill the LegacyScreenSaver process when you unlock your Mac so they'll just stay running and get memory leaky. With this script, you can put a runnable shortcut on your desktop or dock or app launcher of choice and take care of that issue.

If you're smarter than me, you may even figure out a LaunchAgent or some such that auto-runs it on screen unlock so you don't have to click anything at all :)

### TL;DR: it's a stupid hacky workaround to a stupid problem
