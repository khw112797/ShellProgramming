#!/bin/bash

#Functions definitions
WHO() {
    who | boxes -d santa
}

DATE() {
    date | boxes -d bear
}

EXIT() {
    echo "[ FAIL ] YOU SUCK"
    exit 2
}

# Variable definitions

# main functions
cat << EOF
====================================================
  (1). who      (2). date     (3). pwd              
====================================================
EOF

echo -n "SELECT NUMBER : "
read CHOICE
#echo $CHOICE

case $CHOICE in
    1) WHO  ;;
    2) DATE ;;
    3) pwd  ;;
    *) EXIT ;;
esac
