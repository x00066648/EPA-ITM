#!/bin/bash


mpstat $1 $2 -o JSON | jq '100-.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'

