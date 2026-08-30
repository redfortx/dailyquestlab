#!/bin/bash

echo "Starting Daily Quest Initialization..."

# The Lone Apex daemon injects the flag via $APEX_FLAG environment variable 
# depending on the challenge. We'll write it to a hidden file for the user to find.
FLAG_VAL="${APEX_FLAG:-apex{fallback_flag_for_testing}}"

echo "${FLAG_VAL}" > /home/player/.hidden_flag.txt
chmod 400 /home/player/.hidden_flag.txt

echo "================================================="
echo "        DAILY QUEST: HIDDEN FLAG LAB"
echo "================================================="
echo "Welcome, Operative."
echo "Your objective: Locate the hidden flag file inside"
echo "your home directory (/home/player) and submit it."
echo "Good luck."
echo "================================================="

# Keep the container running indefinitely
tail -f /dev/null
