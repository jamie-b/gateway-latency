#!/bin/bash
traceroute -n -q 1 -m 3 -w 1 8.8.8.8 &> ~/gw.txt && grep "ms" ~/gw.txt | awk -F" " '{print $3$4}' 
echo "---"
echo ">>> en0 - Wi-Fi"
ipconfig getpacket en0 | grep -E 'yiaddr|chaddr|subnet|broadcast|domain|router'
echo ">>> en4 - Wired"
ipconfig getpacket en4 | grep -E 'yiaddr|chaddr|subnet|broadcast|domain|router'
echo ">>> en5 - Wired 4G Tether"
ipconfig getpacket en5 | grep -E 'yiaddr|chaddr|subnet|broadcast|domain|router'
