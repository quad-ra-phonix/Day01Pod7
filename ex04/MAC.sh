ifconfig -a ether | grep "ether" | cut -d " " -f2 | awk '{print $0, "\n"}'