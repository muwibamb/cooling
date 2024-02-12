#!/bin/bash

# Compile the C++ program
g++ cooling_system.cpp -o cooling/cooling_system

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed. Exiting..."
    exit 1
fi

# Continuously run the program with random command-line arguments
# while true; do
# Generate random values for temperature and pressure
# argument=$1
temperature="$1"
pressure=$((RANDOM % 2000))    # Generate a random number between 0 and 1999

# Run the program with random command-line arguments
# ./cooling_system $temperature $pressure
valgrind --tool=memcheck --leak-check=yes ./cooling_system $temperature $pressure 2>> out.txt 

sleep 0.5

# ./exec.sh
