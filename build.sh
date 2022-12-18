#!/bin/bash

apt-get update && apt-get install git && apt-get install cmake gcc
apt-get update && apt-get install build-essential

mkdir build
cd build
cmake ..
make