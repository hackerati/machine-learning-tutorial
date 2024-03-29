#!/bin/bash
###############################################################################
# The MIT License (MIT)
#
# Copyright (c) 2015 The Hackerati, Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
###############################################################################

export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""

export AWSPROFILE="default"

export MYKEYPAIR=""
export MYKEYPAIRFILE="`pwd`/${MYKEYPAIR}.pem"

export SPARK_HOME=""
export SPARK_CLUSTER_NAME="hackademy"
export NUMSLAVES=3
export AWS_REGION="us-east-1"
export AWS_ZONE="us-east-1a"
export INSTANCE_TYPE="c3.2xlarge"
