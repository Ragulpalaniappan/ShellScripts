if [ "$(id -u)" -ne "0" ]; then
    echo "This script requires root privileges to view all processes."
    exit 1
fi
