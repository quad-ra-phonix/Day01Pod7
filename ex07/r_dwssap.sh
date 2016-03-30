FT_LINE1=8
FT_LINE2=16
cat /etc/passwd | sed '/^#/d' | awk "NR % 2 == 0" | sed 's/:\(.*\)//g' | rev | sort -r | sed -n "$FT_LINE1, $FT_LINE2 p" | tr '\n' ' ' | sed 's/ /, /g' | sed 's/\(.*\), /\1./' | cat -e
