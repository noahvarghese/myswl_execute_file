#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

pip install -r ./requirements.txt 0 > /dev/null 2>&1

sudo rm -rf /usr/local/lib/mysql-file-runner/

sudo cp -R ./src /usr/local/lib/mysql-file-runner

echo "mysql-file-runner updated"
