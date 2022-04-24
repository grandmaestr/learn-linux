#!/bin/bash

# This program describes (using "whatis") and dry-runs (using "maybe") commands. It is meant to help Linux beginners understand commands
# they find on the internet before they run them. It is not advisable to run this script on production servers.
# Depends on maybe. Install with: sudo apt install maybe
# Depends on whatis. Install with: sudo apt install whatis

# Read the command the user wants to run
echo $'\n What command do you want to execute?:\n'
read string

# Remove "sudo" if  exists
string_b=`echo $string | sed s/"sudo"//`

# Set the command (i.e first string after sudo) to a variable
string_c=`echo $string_b | awk '{print $1;}'`

# Print the description of the command
whatis $string_c

# Dry-run original command with maybe
maybe $string
