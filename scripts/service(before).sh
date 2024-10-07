#!/bin/bash
#############################
# service.sh stop|start httpd
#(start)
# -> systemctl enable httpd
# -> systemctl restart httpd
#(stop)
# -> systemctl disable httpd
# -> systemctl stop httpd
##############################

if [ $# -ne 2 ]; then
    echo "Usage: $0 <start|stop> UNIT"
    exit 1
fi
ACTION=$1
UNIT=$2

UNIT_start() {
    systemctl enable  $UNIT
    systemctl restart $UNIT
    systemctl status  $UNIT
}

UNIT_STOP() {
    systemctl disable $UNIT
    systemctl stop    $UNIT
    systemctl status  $UNIT
}

EXIT() {
    echo "[ YOU SUCK ]"
    exit 1
}
case $ACTION in
    start) UNIT_START ;;
    stop)  UNIT_STOP  ;;
    *)     EXIT       ;;
esac

