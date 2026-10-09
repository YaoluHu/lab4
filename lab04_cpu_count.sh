#!/bin/bash


num_cpu=$(grep "processor" /proc/cpuinfo | wc -l)

if [$"num_cpu" -lt "$1"]; then
	echo "Error: Not enough CPUs. Found $num_cpu"
else
	echo "OK: Found $num_cpu CPUs. Requirement satisfied."
fi

