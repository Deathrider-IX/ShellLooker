#!/bin/bash

while true; do

	echo "SYSTEM INFO LOOKER"
        echo ""
        echo "SYSTEM INFO MENU"
        echo "1) Hostname"
        echo "2) Uptime"
        echo "3) Disk Usage"
        echo "4) Memory Usage"e
        echo "5) Logged-in Users"
        echo "0) EXIT"
        echo ""

	read -p "Choose:" choice

	[[ "$choice" == "0" ]] && break
	[[ -z "$choice" ]]&& echo "try again.." && continue

	case $choice in
                1) hostname && lscpu | grep -i "vuln" ;;
                2) uptime -psV ;;
                3) df --total -h && lsusb;;
                4) free -h && vmstat -d;;
                5) who;;
                6) echo "EXITING..."
	esac


if [[ "$choice" == "upt" ]]; then
	target="${choice#upt }"
	echo "usage updating system.."
	sudo apt install -y 
	exit 1


fi 
done





