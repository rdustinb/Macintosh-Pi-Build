#!/bin/bash

EMULFOLDER="~/Developer/emulation"

# Rotate the X display
xrandr -o 3

# Copy the current emulation configuration into the place that Basilisk expects it
cp ${EMULFOLDER}/Configs/system.config ~/.config/BasiliskII/prefs

# Launch the emulation system
BasiliskII \
  --keycodefile ${EMULFOLDER}/Keycodes/keycodes.logi \
  --rom  ${EMULFOLDER}/ROMs/ColorClassic-1MB.rom \
  --disk ${EMULFOLDER}/Floppys/System7_Boot.dsk \
  --disk ${EMULFOLDER}/Floppys/System7.5.3_Install.dsk \
  --disk ${EMULFOLDER}/Floppys/System7.5.5_Update_1.dsk \
  --disk ${EMULFOLDER}/Floppys/System7.5.5_Update_2.dsk \
  --disk ${EMULFOLDER}/Floppys/System7.5.5_Update_3.dsk \
  --disk ${EMULFOLDER}/HDDs/HDD.dsk

# When the emulation system shuts down, shut down the host system to fully integrate the two
sudo shutdown now
