#!/bin/sh

if [ "$1" = "" ] || [ ! -d data/$1 ]; then
    echo ""
    echo "Cannot find directory: ./data/$1. Aborting."
    echo
    exit 1
fi

cd data/$1

dir=`pwd`

db=$1

if [ ! -f LOCATION_CODE_TBL.dat ]; then
    echo ""
    echo "ERROR, cannot find LOCATION_CODE_TBL.dat file. Aborting."
    echo ""
    exit 1
fi

wc -l LOCATION_CODE_TBL.dat
echo ""

mysql -vvv --max_allowed_packet=100M $db < ../../location_code_tbl.sql

echo ""

exit 0
