#!/usr/bin/env sh

killall polybar

sleep 1;

polybar left &
polybar center &
polybar right &
polybar tray &
