#!/bin/bash

HOSTNAME=$(hostname)
echo "HOSTNAME = $HOSTNAME"
TIMEZONE="$(cat /etc/timezone) UTC $(date +"%z")"
echo "TIMEZONE = $TIMEZONE"
USER=$(whoami)
echo "USER = $USER"
OS="$(cat /etc/issue | awk '{print $1}') $(cat /etc/issue | awk '{print $2}')"
echo "OS = $OS"
DATE="$(date +"%d %B %Y %H:%M:%S")"
echo "DATE = $DATE"
UPTIME="$(uptime | awk '{print $3}')"
echo "UPTIME = $UPTIME"
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
echo "UPTIME_SEC = $UPTIME_SEC"
IP=$(hostname -I)
echo "IP = $IP"
MASK=$(ifconfig | awk '{print $4}' | awk '(NR == 2)')
echo "MASK = $MASK"
GATEWAY=$(ip r | awk '{print $3}' | awk '(NR == 1)')
echo "GATEWAY = $GATEWAY"
RAM_TOTAL=$(free -m | awk '{printf "%.3f ", awk $2/1024}' | awk '{print $2}')
echo "RAM_TOTAL = $RAM_TOTAL GB"
RAM_USED=$(free -m | awk '{printf "%.3f ", awk $3/1024}' | awk '{print $2}')
echo "RAM_USED = $RAM_USED GB"
RAM_FREE=$(free -m | awk '{printf "%.3f ", awk $4/1024}' | awk '{print $2}')
echo "RAM_FREE = $RAM_FREE GB"
SPACE_ROOT=$(df /root/ | awk '{printf "%.2f ", awk $2/1024}' | awk '{print $2}')
echo "SPACE_ROOT = $SPACE_ROOT MB"
SPACE_ROOT_USED=$(df /root/ | awk '{printf "%.2f ", awk $3/1024}' | awk '{print $2}')
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED MB"
SPACE_ROOT_FREE=$(df /root/ | awk '{printf "%.2f ", awk $4/1024}' | awk '{print $2}')
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE MB"
