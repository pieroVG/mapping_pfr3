#!/bin/bash

# Commandes à exécuter dans différents terminaux
commande_terminal_1=(
    "source install/setup.bash"
    "ros2 launch mapping_pfr3 rsp.launch.py"
)

commande_terminal_2=(
    "source install/setup.bash"
    "ros2 run joint_state_publisher_gui joint_state_publisher_gui"
)

commande_terminal_3=(
    "source install/setup.bash"
    "ros2 run image_transport republish compressed raw --ros-args -r in/compressed:=/camera/image_raw/compressed -r out:=/camera/image_raw/uncompressed"
)

commande_terminal_4=(
    "source install/setup.bash"
    "ros2 launch ball_tracker ball_tracker.launch.py detect_only:=true image_topic:=/camera/image_raw/uncompressed"
)

# Lancement des commandes dans différents terminaux
gnome-terminal -- bash -c "${commande_terminal_1[*]}; exec bash"
gnome-terminal -- bash -c "${commande_terminal_2[*]}; exec bash"
gnome-terminal -- bash -c "${commande_terminal_3[*]}; exec bash"
gnome-terminal -- bash -c "${commande_terminal_4[*]}; exec bash"

# Ouvrir rviz2 dans le terminal actuel
rviz2
