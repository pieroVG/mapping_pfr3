#!/bin/bash

# Lancer les commandes dans différents terminaux en utilisant des sessions SSH
gnome-terminal -- bash -c "./lidar_launch.sh; exec bash"
gnome-terminal -- bash -c "./camera_launch.sh; exec bash"

