#!/usr/bin/expect

# Commandes à exécuter dans la session SSH (Terminal 2)
set commandes_terminal_2 {
    "ros2 launch mapping_pfr3 camera.launch.py"
}

# Ouvre une session SSH et exécute les commandes_terminal_2
spawn ssh samuel@192.168.161.145
expect "password:"
send "14102002\r"
expect "$ "
foreach command $commandes_terminal_2 {
    send "$command\r"
    expect "$ "
}

# Quitte la session SSH
send "exit\r"
expect eof
