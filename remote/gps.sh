#!/bin/bash
echo "Set Indi Location"
indi_setprop "GPS Simulator.GEOGRAPHIC_COORD.LAT=15.1589"
indi_setprop "GPS Simulator.GEOGRAPHIC_COORD.LON=120.6965"
indi_setprop "GPS Simulator.GEOGRAPHIC_COORD.ELEV=16.0"
echo "Set Indi Location finished "
echo "Checking" 
indi_getprop | grep  COORD
