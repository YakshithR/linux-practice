#!/bin/bash

# CPU overload simulation

yes > /dev/null &

# Memory stress test

stress --vm 1 --vm-bytes 300M --timeout 30s

# Disk full simulation

fallocate -l 1G bigfile

# Log explosion simulation

while true; do echo "error log spam" >> /var/log/fake.log; done

