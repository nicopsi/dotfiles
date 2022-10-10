#!/bin/bash

read -p "Set input file (if): " inputfile
read -p "Set output file (of): " outputfile
sudo dd bs=4M if=$inputfile of=$outputfile conv=fdatasync status=progress
