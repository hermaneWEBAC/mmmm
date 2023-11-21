#!/bin/bash
cat passwd.txt | sed -n "1~2p"| cut -d: -f 1 | rev | sort -r | sed -n -e "$MY_LINE1 ,$MY_LINE2 p" | sed ':a;N;$!ba;s/\n/, /g' | sed 's/$/./' 
