#!/bin/bash

echo "Cleaning orphaned packages..."
sudo paccache -ruk0

echo "Cleaning up old versions of installed packages..."
sudo paccache -rk1

echo "Pacman Cache clean up complete."
