#!/bin/bash

# Commandes à exécuter dans différents terminaux
commandes_terminal_1=(
    "source install/setup.bash"
    "ros2 launch mapping_pfr3 rplidar.launch.py"
)

commandes_terminal_2=(
    "source install/setup.bash"
    "ros2 launch mapping_pfr3 camera.launch.py"
)

# Lancement des commandes dans différents terminaux
gnome-terminal -- bash -c "${commandes_terminal_1[*]}; exec bash"
gnome-terminal -- bash -c "${commandes_terminal_2[*]}; exec bash"
