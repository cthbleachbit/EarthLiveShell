#!/bin/bash
#==========================================================
# EarthLiveShell
# I/O functions library
# Copyright (C) James Chai (cth451) <cth451@gmail.com>
# Inspired by bitdust's [ https://github.com/bitdust ]
# Licensed under LGPL 3
#
# This program is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public
# License for more details.
#==========================================================

log () {
	case "$1" in
		1)	printf "%b" '[Err]' >> "${opt_log}";;
		2)	printf "%b" '[Inf]' >> "${opt_log}";;
	esac
	printf "[%b] " $(date +%F-%T-%Z) >> "${opt_log}"
	printf "%b\n" "$2" >> "${opt_log}"
}
# log [level] [info]