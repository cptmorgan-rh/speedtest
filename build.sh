#!/bin/bash

echo "Downloading speedtest cli"
wget "https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz" -O ookla-speedtest-1.0.0-x86_64-linux.tgz > /dev/null 2>&1

echo "Extracting speedtest cli"
tar -zxvf ookla-speedtest-1.0.0-x86_64-linux.tgz speedtest > /dev/null 2>&1

docker build -t speedtest:1.0 .

##Cleanup
rm -rf ookla-speedtest-1.0.0-x86_64-linux.tgz speedtest
