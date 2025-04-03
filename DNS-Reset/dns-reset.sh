#!/bin/bash

mvers=$(sw_vers -productVersion | cut -c 1-2)

case mvers in
	13 | 14 | 15)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
	;;
	11 | 12)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
		echo "This version of macOS is not supported. Please upgrade your Mac."
	;;
	10)
		killall -HUP mDNSResponder
		echo "This version of Mac OS is not supported. Please upgrade your Mac."
	;;
esac
exit 0
