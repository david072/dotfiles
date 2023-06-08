#!/bin/bash

echo $(ifconfig enp37s0 | grep "inet" | cut -d: -f2 | awk '{print $2}')
