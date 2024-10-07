#!/bin/bash
# service.sh stop|start httpd
# -> systemctl enable httpd
# -> systemctl restart httpd

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start|stop> UNIT"
    exit 1
fi

ACTION=$1
UNIT=$2

unit_start() {
    systemctl enable $UNIT
    systemctl restart $UNIT
    systemctl status $UNIT
}

unit_stop() {
    systemctl disable $UNIT
    systemctl stop $UNIT
    systemctl status $UNIT
}

exit_with_error() {
    echo "[ YOU SUCK ]"
    exit 1
}

case $ACTION in
    start) unit_start ;;
    stop)  unit_stop ;;
    *)     exit_with_error ;;
esac
