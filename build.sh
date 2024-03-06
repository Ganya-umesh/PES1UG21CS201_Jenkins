#!/bin/bash

# Replace "YOUR_SRN" with your actual SRN
SRN="PES1UG21CS201"

# Define the file name and output executable name
input_file="PES1UG21CS201.cpp"
output_executable="${SRN}-1"

# Compilation command
g++ -o $output_executable $input_file
