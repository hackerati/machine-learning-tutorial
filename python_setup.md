#Preparing python for development
#This useful in general, not only for this course

## If python is not installed

[Download and install](https://www.python.org/download/releases/2.7/) using the installer appropriate for your OS.

*Note: we use python 2.7 for this course.*

## Use a package manager

**OS X**: Install [Homebrew](http://brew.sh/)

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**Linux**: You are good to go.

## Make sure you have pip
**OS X**:

```bash
brew install pip
```
**Debian/Ubuntu**:

```bash
sudo apt-get install python-pip
```

**Fedora**:

```bash
sudo yum install python-pip
```

## Generally a good idea for python development on Linux

**Debian/Ubuntu**:

```bash
sudo apt-get install python-dev
```

**Fedora**:

```bash
sudo yum install python-devel
```

This will prevent some confusing issues where you can't install python packages.

## Set up your virtual environment

Install virtualenv:

```bash
pip install virtualenv
```

Enter the following to create the virtualenv, and store it in the 'env' directory:

```bash
virtualenv env
```

Now, install the requirements:

```bash
pip install -r requirements.txt
```
