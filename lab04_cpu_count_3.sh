
#!/bin/bash

# Check whether the user supplied an argument
if [ -z "$1" ]; then
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
    exit 1
fi

if ! [[ "$required" =~ ^[0-9]+$ ]]; then
	echo "ERROR: MAX_NUM_CORES must be a positive integer."
	exit 1
fi

num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

if [ "$num_cpu" -lt "$1" ]; then
    echo "ERROR: Not enough CPUs. Found $num_cpu."
else
    echo "OK: Found $num_cpu CPUs. Requirement satisfied."
fi



