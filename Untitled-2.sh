#!/bin/bash
# ------------------------------------------
if [ -f /home/lw-staff/CHun/snapshots.csv ]; then
    while read snap_id
    do
        aws ec2 delete-snapshot --snapshot-id $snap_id
    done
else
    echo "Missing snapshot CSV, terminating"
    exit
fi