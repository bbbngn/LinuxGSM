#!/bin/bash
# LGSM check_executable.sh function
# Author: Daniel Gibbs
# Website: https://gameservermanagers.com
# Description: Checks if executable exists.

local commandname="CHECK"
local function_selfname="$(basename $(readlink -f "${BASH_SOURCE[0]}"))"

# Check if executable exists
if [ ! -f "${executabledir}/${execname}" ]; then
	fn_script_log_warn "Expected executable not found: ${executabledir}/${execname}"
	if [ -d "${scriptlogdir}" ]; then
		fn_print_fail_nl "Executable ${execname} was not found"
	fi
	exitcode="1"
	core_exit.sh
fi
