#!/bin/bash

# Startup a new tmux session
tmux new-session -d -s programming

# split the first pane into two vertical panes
tmux split-window -h
tmux split-window -v

tmux select-pane -t 3

tmux attach-session -t mysession
