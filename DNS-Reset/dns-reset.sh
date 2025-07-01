#!/bin/bash

mvers=$(sw_vers -productVersion | cut -c 1-2)

case mvers in
	14 | 15 | 26)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
  		echo "Flushed DNS Cache"
	;;
	11 | 12 | 13)
		dscacheutil -flushcache
		killall -HUP mDNSResponder
		echo "This version of macOS is not supported. Please upgrade your Mac."
  		echo "Flushed DNS Cache"
	;;
	10)
		killall -HUP mDNSResponder
		echo "This version of Mac OS is not supported. Please upgrade your Mac."
    		echo "Flushed DNS Cache"
	;;
esac
exit 0
