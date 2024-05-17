#!/usr/bin/expect

# Commandes à exécuter dans la session SSH (Terminal 1)
set commandes_terminal_1 {
    "source install/setup.bash"
    "ros2 launch mapping_pfr3 rplidar.launch.py"
}

# Ouvre une session SSH et exécute les commandes_terminal_1
spawn ssh samuel@192.168.161.145
expect "password:"
send "14102002\r"
expect "$ "
foreach command $commandes_terminal_1 {
    send "$command\r"
    expect "$ "
}

# Quitte la session SSH
send "exit\r"
expect eof
