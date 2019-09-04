#!/bin/bash

DOSLIST_FILE="$1"

while read -r line
do
    echo ""
    echo "Formatting: $line"
    dos2unix $line

done < "$DOSLIST_FILE"


echo ""
echo "------------------------------------------------------------------------------------------"
echo "|                            files_dos2unix.sh is complete!                              |"
echo "------------------------------------------------------------------------------------------"