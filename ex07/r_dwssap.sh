#!/bin/bash
FT_LINE1=1
FT_LINE2=5
cat /etc/passwd | sed "/^#/d" | awk "NR % 2 == 0"| cut -d: -f1 | rev | sort -r | awk "NR >= $FT_LINE1 && NR <= $FT_LINE2" | tr '\n' ', ' | sed 's/, *$/. /'
