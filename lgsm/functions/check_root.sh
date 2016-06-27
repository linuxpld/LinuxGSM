#!/bin/bash
# LGSM check_root.sh function
# Author: Daniel Gibbs
# Website: https://gameservermanagers.com
lgsm_version="210516"

if [ $(whoami) = "root" ]; then
	fn_print_fail_nl "Do NOT run this script as root!"
	if [ -d "${scriptlogdir}" ]; then
		fn_scriptlog_fatal "${selfname} attempted to run as root."
	fi
	core_exit.sh
fi
