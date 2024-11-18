#!/bin/bash

# This script generates a list of random passwords.

# A STRONG password
PASSWORD=$(date +%s%N)
echo "Here is a STRONG password: ${PASSWORD}"

# A STRONGER password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "Here is a STRONGER password: ${PASSWORD}"

# A REALLY STRONG password
PASSWORD=$(date +%s%N{RANDOM}${RANDOM} | sha256sum | head -c48)
echo "Here is a REALLY STRONG password: ${PASSWORD}"
