#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CURDIR=$PWD
cd $SCRIPT_DIR
docker-compose up -d
cd $CURDIR
