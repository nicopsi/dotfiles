#!/bin/bash

echo "Creating a live usb"

read -p "Set input file (if): " inputfile
read -p "Set output file (of): " outputfile

sudo dd bs=4M if=$inputfile of=$outputfile conv=fdatasync status=progress

echo "live usb created"
