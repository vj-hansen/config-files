DEPLIST="`sed -e 's/#.*$//' -e '/^$/d' software.txt | tr '\n' ' '`"
emerge -q $DEPLIST
