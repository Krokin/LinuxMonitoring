#!/bin/bash

export HOSTNAME=$(hostname)
export TIMEZONE="$(cat /etc/timezone) UTC $(date +"%z")"
export USER=$(whoami)
export OS="$(cat /etc/issue | awk '{print $1}') $(cat /etc/issue | awk '{print $2}')"
export DATE="$(date +"%d %B %Y %H:%M:%S")"
export UPTIME="$(uptime | awk '{print $3}')"
export UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
export IP=$(hostname -I)
export MASK=$(ifconfig | awk '{print $4}' | awk '(NR == 2)')
export GATEWAY=$(ip r | awk '{print $3}' | awk '(NR == 1)')
export RAM_TOTAL=$(free -m | awk '{printf "%.3f ", awk $2/1024}' | awk '{print $2}')
export RAM_USED=$(free -m | awk '{printf "%.3f ", awk $3/1024}' | awk '{print $2}')
export RAM_FREE=$(free -m | awk '{printf "%.3f ", awk $4/1024}' | awk '{print $2}')
export SPACE_ROOT=$(df /root/ | awk '{printf "%.2f ", awk $2/1024}' | awk '{print $2}')
export SPACE_ROOT_USED=$(df /root/ | awk '{printf "%.2f ", awk $3/1024}' | awk '{print $2}')
export SPACE_ROOT_FREE=$(df /root/ | awk '{printf "%.2f ", awk $4/1024}' | awk '{print $2}')
chmod +x color.sh
./color.sh