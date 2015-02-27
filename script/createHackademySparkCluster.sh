#!/bin/bash

cd ../spark/ec2

./spark-ec2 --key-pair=$MYKEYPAIR --identity-file=$MYKEYPAIRFILE --region=us-east-1 --zone=us-east-1a --copy-aws-credentials --instance-type=c3.2xlarge --slaves=$NUMSLAVES launch hackademy
