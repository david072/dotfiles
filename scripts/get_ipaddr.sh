#!/bin/bash

ipaddr_linux () {
  echo $(ifconfig enp37s0 | grep "inet" | cut -d: -f2 | awk '{print $2}')
}

ipaddr_mac () {
  echo $(ipconfig getifaddr en0)
}

case $(uname -s) in
  Linux) ipaddr_linux
  ;;
  Darwin) ipaddr_mac
  ;;
  *) echo "Unrecognized platform"
  ;;
esac

