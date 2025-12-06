#!/bin/bash
while true; do
  echo "<134> date=$(date '+%Y-%m-%d %H:%M:%S') type=traffic srcip=10.0.0.10 dstip=8.8.8.8 action=accept service=HTTPS policyid=1" | nc -u localhost 514
  echo "<134> date=$(date '+%Y-%m-%d %H:%M:%S') type=utm srcip=192.168.1.50 dstip=1.1.1.1 action=blocked threat=malware severity=high" | nc -u localhost 514
  sleep 1
done