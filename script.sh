#!/bin/sh




curl -gsk  -F "key=$APIKEY" "https://$IP/api/?type=op&cmd=<show><arp><entry+name+=+'all'/></arp></show>" | xq ".response.result.entries.entry[]"
