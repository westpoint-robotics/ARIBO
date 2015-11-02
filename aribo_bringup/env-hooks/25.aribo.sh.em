# Set some sane defaults for the aribo launch environment

## Documentation: 
#  The colon command simply has its arguments evaluated and then succeeds. 
#   It is the original shell comment notation (before '#' to end of line). For a long time, Bourne shell scripts had a colon as the first character. 
#   The C Shell would read a script and use the first character to determine whether it was for the C Shell (a '#' hash) or the Bourne shell (a ':' colon).
#   Then the kernel got in on the act and added support for '#!/path/to/program' and the Bourne shell got '#' comments, and the colon convention went by the wayside. 
#   But if you come across a script that starts with a colon (Like this one), now you will know why. ~ Jonathan Leffler

: ${ARIBO_BASE:=gvr_bot}                          # create, roomba
: ${ARIBO_BATTERY:=/sys/class/power_supply/BAT0}  # /proc/acpi/battery/BAT0 in 2.6 or earlier kernels,  /sys/class/power_supply/ (kernels 3.0+) 
: ${ARIBO_3D_SENSOR:=asus_xtion_pro}              # kinect, asus_xtion_pro, asus_xtion_pro_offset
: ${ARIBO_SIMULATION:=false}
: ${ARIBO_PORT:=wlan1}                            # /dev/ttyUSB0, /dev/ttyS0
: ${ARIBO_NAME:=aribo}
: ${ARIBO_TYPE:=aribo}

# Exports
export ARIBO_BASE
export ARIBO_BATTERY
export ARIBO_3D_SENSOR
export ARIBO_SIMULATION
export ARIBO_PORT
export ARIBO_NAME
export ARIBO_TYPE

