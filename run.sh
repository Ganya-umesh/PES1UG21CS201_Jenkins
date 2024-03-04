#!/bin/bash

# Define the name of the compiled executable
executable="-1.exe"

# Check if the executable file exists
if [ -f "$executable" ]; then
    # Run the executable and print its output
    ./$executable
else
    echo "Executable file '$executable' not found."
fi
