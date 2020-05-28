#!/bin/sh

# Solves low clicking when entering / exiting videos
echo 0 | sudo tee /sys/module/snd_hda_intel/parameters/power_save

# Path
export PATH=$PATH:/usr/sbin

# Installs
apt-get install vim bash-completion redshift redshift-gtk pathogen -y

# Presets
cp redshift.conf ~/.config/

# Internets:
# Invert mouse
# Add bash completion: edito /etc/bash.bashrc, uncomment bash_completion session
