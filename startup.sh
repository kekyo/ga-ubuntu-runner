#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y

cd /a

curl -o actions-runner-linux-x64-2.299.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.293.0/actions-runner-linux-x64-2.299.1.tar.gz
tar zxvf actions-runner-linux-x64-2.299.1.tar.gz

./config.sh --unattended --replace --url $GA_URL --token $GA_TOKEN --name $GA_NAME

./run.sh

