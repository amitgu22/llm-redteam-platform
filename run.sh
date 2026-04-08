#!/bin/bash

PROVIDER=$1
ATTACK=$2

echo "Running Red Teaming for $PROVIDER with $ATTACK"

# Promptfoo
echo "Running Promptfoo..."
promptfoo eval -c promptfoo/promptfooconfig.yaml

# PyRIT
echo "Running PyRIT..."
python pyrit/pyrit_attack.py

# Garak
echo "Running Garak..."
garak --model $PROVIDER --probes all

echo "All scans completed!"