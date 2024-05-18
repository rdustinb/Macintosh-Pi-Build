#!/bin/bash

# Rotate the X display
xrandr -o 3

# Copy the current emulation configuration into the place that Basilisk expects it
cp ~/Developer/emulation/Configs/system.config ~/.config/BasiliskII/prefs

# Launch the emulation system
BasiliskII \
  --keycodefile ~/Developer/emulation/Keycodes/keycodes \
  --rom ~/Developer/emulation/ROMs/ColorClassic-1MB.rom \
  --disk ~/Developer/emulation/Floppys/System7_Boot.dsk \
  --disk ~/Developer/emulation/Floppys/System7.5.3_Install.dsk \
  --disk ~/Developer/emulation/Floppys/System7.5.5_Update_1.dsk \
  --disk ~/Developer/emulation/Floppys/System7.5.5_Update_2.dsk \
  --disk ~/Developer/emulation/Floppys/System7.5.5_Update_3.dsk \
  --disk ~/Developer/emulation/HDDs/HDD.dsk

# When the emulation system shuts down, shut down the host system to fully integrate the two
sudo shutdown now
