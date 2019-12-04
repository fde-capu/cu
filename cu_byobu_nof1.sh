#!/bin/bash

# C. U. Computer Utilizator
# by fde_capu
#
#   cu_byobu_nof1.sh
#
# Unbind F1 help in byobu tmux.
# This is mande necessary to
# properly bind F1 to a header.

cu_aif0.sh "unbind-key -n F1" ~/.byobu/keybindings.tmux
