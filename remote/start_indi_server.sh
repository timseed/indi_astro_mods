#!/bin/bash
#
INDISVR="indiserver"
PIPE="/tmp/indiFIFO"
if pgrep -x $INDISVR > /dev/null
then
    echo "$INDISVR is Running"
    echo "Manually kill this to start $INSISVR again"
    echo ""
    echo ""
    echo "killall $INDISVR # Needs to be entered"
    exit 0
else
    echo "$INDISVR is Stopped"
fi

if [[ -p "$PIPE" ]]; then
  echo "$PIPE exists."
  rm -f $PIPE
  echo "$PIPE has been removed"
else
  echo "$PIPE does not exist."
fi

# Now create the pipe
mkfifo $PIPE
nohup $INDISVR -f $PIPE 2>&1 > ~/indisvr_log.log&
# need a rest (and let indi to calm down)
sleep 4

# I have 2 devices I want to remote control
# Nikon Camera
# Mount ?
echo "start indi_nikon_ccd -n \"Nikon DSLR\" " >> $PIPE
echo "Started Nikon Camera Indi process."
sleep 2
echo "start indi_simulator_gps -n \"GPS Simulator\" " >> $PIPE 
echo "Started gps_simulator process."
sleep 3
echo "start indi_simulator_telescope -n \"SkyWatcher Adventurer\" " >> $PIPE
echo "Completed"
echo "================="
echo "= Indi Status   ="
echo "================="
ps -ef | grep indi | grep -v grep

echo "Set GPS Position is fixed to Arenas, PH"
echo "Checking" 
indi_getprop | grep  COORD
