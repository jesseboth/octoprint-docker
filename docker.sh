#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CURDIR=$PWD
TPLINK_IP="192.168.1.102"

cd $SCRIPT_DIR


./tplink-smartplug/tplink_smartplug.py -t $TPLINK_IP -c on
sleep 2
docker-compose up -d
sleep 2
./tplink-smartplug/tplink_smartplug.py -t $TPLINK_IP -c off

cd $CURDIR
