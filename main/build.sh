#!/bin/bash

# Shell script to compile a C++ file
# Replace "YOUR_SRN" with your SRN

# Define the file name and output executable name
input_file="PES1UG21CS201.cpp"
output_executable="my_executable_201"

# Compilation command
g++ -o $output_executable $input_file
