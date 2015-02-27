#!/bin/bash

cd ../spark/ec2
./spark-ec2 --key-pair=${MYKEYPAIR} --identity-file=${MYKEYPAIRFILE} destroy hackademy
