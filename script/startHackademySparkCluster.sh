#!/bin/bash

source config.sh
cd ../spark/ec2
./spark-ec2 --key-pair=${MYKEYPAIR} --identity-file=${MYKEYPAIRFILE} start $CLUSTER_NAME
