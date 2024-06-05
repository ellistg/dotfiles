#!/bin/sh

while true; do

updates="$(apt-get -s -o Debug::NoLocking=true upgrade | grep -c ^Inst)"

if [ "$updates" -gt 0 ]; then
    text=" $number"
else
    text=""
fi

echo "updates|string|$text"
echo ""
sleep 30m

done
