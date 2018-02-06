#!/bin/bash
# Week 4 Lab

# clear screen
clear

# This command will update and upgrade debian before beginning new scripts
sudo apt-get update && sudo apt-get upgrade

# Change directory to /dev
echo "Changing directory to /dev"
cd /dev

# Detailed list of directory contents
echo "Directory contents"
ls -l

# Change directory to /proc and view partitions
echo "Next, changing directory to /proc and take a look at the partitions"
cd /proc && cat /proc/partition

# Using example from textbook pg 48 to demonstrate dd command.  This should copy data from a block /dev/zero
# to a new file labeled new_file
echo "Using dd example to create new_file"
dd if=/dev/zero of=new_file bs=1024 count=1
echo "You should see new_file listed below"
ls

# Remove new_file
echo "Now to remove new_file"
rm new_file
ls
echo "new_file removed"

echo "Please feel free to review and let me know if you find any bugs.  Thank you for your time."
