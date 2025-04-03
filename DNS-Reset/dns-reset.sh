#!/bin/bash

mvers=$(sw_vers -productVersion)

case mvers in
	13.* | 14.* | 15.*)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
	;;
	11.* | 12.*)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
		echo "This version of macOS is not supported. Please upgrade your Mac."
	;;
	10.11.* | 10.12.* | 10.13.* | 10.14.* | 10.15.*)
		killall -HUP mDNSResponder
		echo "This version of Mac OS is not supported. Please upgrade your Mac."
	;;
	*)
		echo "This version of Mac OS X is not supported. Please upgrade your Mac."
	;;
done
