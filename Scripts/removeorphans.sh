#!/bin/bash

echo "Removing orphaned packages from system..."

# Capture orphaned package list (suppressing error output)
orphans=$(sudo pacman -Qtdq 2>/dev/null)

if [ -z "$orphans" ]; then
    echo "No orphaned packages found."
else
    sudo pacman -Rns $orphans
    echo "Orphaned packages removed."
fi
