#!/bin/bash

apt-get update && apt-get install git && apt-get install cmake gcc
apt-get update && apt-get install build-essential
RUN apt-get update && apt-get install ca-certificates -y

mkdir build
cd build
cmake ..
make