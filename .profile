# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Amazon AWS CLI configuration shit
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"
export EC2_HOME="/home/big/j/Code/aws/ec2-api-tools-1.6.11.0"
export PATH=$PATH:$EC2_HOME/bin
export AWS_ACCESS_KEY="AKIAIJ4YGWTMQ5GAAQYQ"
export AWS_SECRET_KEY="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"
export EC2_URL='https://ec2.us-west-2.amazonaws.com'
