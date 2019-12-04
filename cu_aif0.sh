#!/bin/bash

# C. U. Computer Utilizator
# by fde_capu
#
#    cu_aif0.sh (line string), (filename)
#
# Appends line string to file only if line does not exist.

grep -qxF -- "$1" "$2" || echo "$1" >> "$2"
