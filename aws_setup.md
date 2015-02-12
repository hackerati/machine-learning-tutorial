Initial AWS Setup
=================

Log into AWS
------------

1. [AWS Login URL](https://chardhack.signin.aws.amazon.com/console)
2. Use the name and temporary password in your email.

Install Spark Locally
---------------------

1. Go to the [spark](http://www.apache.org/dyn/closer.cgi/spark/spark-1.2.1/spark-1.2.1-bin-hadoop2.4.tgz) download page
2. Download
3. Untar the package
  * __OS X__: Archive Utility
  * __*NIX__: cd ~/Downloads; tar zxvf spark-1.2.1-bin-hadoop2.4.tgz
  * __Windows__: Install OS X or *NIX

Set up the Spark Cluster Login Scripts
--------------------------------------

1. Place your acces key id and secret access key in the empty quotes in the first two lines
2. Put SOMETHING in the AWSPROFILE line
3. Download HackademyKey.pem, and place it in the ~/.ssh directory

```bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWSPROFILE=""
export MYKEYPAIR="HackademyKey"
export MYKEYPAIRFILE="$HOME/.ssh/${MYKEYPAIR}.pem"
cd /opt/spark/ec2
./spark-ec2 --key-pair=${MYKEYPAIR} --identity-file=${MYKEYPAIRFILE} login hackademy
```

Verify That you can Create EC2 Cluster
--------------------------------------
