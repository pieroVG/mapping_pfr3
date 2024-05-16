#!/usr/bin/expect

# Commandes à exécuter dans la session SSH
commandes_terminal_1=(
    "ros2 launch mapping_pfr3 rplidar.launch.py"
)

commandes_terminal_2=(
    "ros2 launch mapping_pfr3 camera.launch.py"
)

# Fonction pour exécuter les commandes dans la session SSH
proc execute_commands {commands} {
    foreach command $commands {
        send "$command\r"
        expect "$ "
    }
}

# Ouvre une session SSH et exécute les commandes_terminal_2
spawn ssh samuel@192.168.161.145
expect "password:"
send "14102002\r"
expect "$ "
execute_commands $commandes_terminal_2

# Exécute les commandes_terminal_1 après avoir terminé les commandes_terminal_2
execute_commands $commandes_terminal_1

# Quitte la session SSH
send "exit\r"
expect eof
