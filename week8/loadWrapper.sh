#!/bin/bash

# & is to background the loadtest
# process will detatch from the shell

# fg will return the backgound process to the foreground

./loadtest $1 & 

sleep $2
pkill loadtest
