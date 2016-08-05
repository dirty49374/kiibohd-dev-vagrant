#!/usr/bin/env bash
# This is a build script template
# These build scripts are just a convenience for configuring your keyboard (less daunting than CMake)
# Jacob Alexander 2016



#################
# Configuration #
#################

# Feel free to change the variables in this section to configure your keyboard

BuildPath="MD11_DIRTY49374"

## KLL Configuration ##

# Generally shouldn't be changed, this will affect every layer
BaseMap="scancode_map"

# This is the default layer of the keyboard
# NOTE: To combine kll files into a single layout, separate them by spaces
# e.g.  DefaultMap="mylayout mylayoutmod"
DefaultMap="MD1.1-dirty49374-0 stdFuncMap"

# This is where you set the additional layers
# NOTE: Indexing starts at 1
# NOTE: Each new layer is another array entry
# e.g.  PartialMaps[1]="layer1 layer1mod"
#       PartialMaps[2]="layer2"
#       PartialMaps[3]="layer3"
PartialMaps[1]="MD1.1-dirty49374-1 stdFuncMap"
PartialMaps[2]="MD1.1-dirty49374-2 stdFuncMap"
PartialMaps[3]="MD1.1-dirty49374-3 stdFuncMap"
PartialMaps[4]="MD1.1-dirty49374-4 stdFuncMap"
PartialMaps[5]="MD1.1-dirty49374-5 stdFuncMap"
PartialMaps[6]="MD1.1-dirty49374-6 stdFuncMap"
PartialMaps[7]="MD1.1-dirty49374-7 stdFuncMap"



##########################
# Advanced Configuration #
##########################

# Don't change the variables in this section unless you know what you're doing
# These are useful for completely custom keyboards
# NOTE: Changing any of these variables will require a force build to compile correctly

# Keyboard Module Configuration
ScanModule="MD1.1"
MacroModule="PartialMap"
OutputModule="pjrcUSB"
DebugModule="full"

# Microcontroller
Chip="mk20dx128vlf5"

# Compiler Selection
Compiler="gcc"



########################
# Bash Library Include #
########################

# Shouldn't need to touch this section

# Check if the library can be found
if [ ! -f cmake.bash ]; then
        echo "ERROR: Cannot find 'cmake.bash'"
        exit 1
fi

# Load the library
source cmake.bash