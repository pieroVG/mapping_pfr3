#!/bin/bash

# Lancer les commandes dans différents terminaux en utilisant des sessions SSH
gnome-terminal -- bash -c "./run_ssh_commands_terminal_1.sh; exec bash"
gnome-terminal -- bash -c "./run_ssh_commands_terminal_2.sh; exec bash"

