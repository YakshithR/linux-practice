# Day 2 — Linux Incident Simulation Lab

## Objective

Practice real-world Linux production incidents and recovery techniques.

## Incidents Simulated

### 1. CPU Overload Simulation

**Command used:**

```
yes > /dev/null &
```

**Observation:**

* CPU usage increased
* Load average increased

**Recovery:**

```
ps aux --sort=-%cpu | head
kill -9 <PID>
```

---

### 2. Memory Exhaustion Simulation

**Command used:**

```
stress --vm 1 --vm-bytes 300M --timeout 30s
```

**Observation:**

* Memory usage increased
* OOM killer activated

**Verification:**

```
dmesg | tail
```

---

### 3. Disk Full Simulation

**Command used:**

```
fallocate -l 1G bigfile
fallocate -l 1.5G bigfile2
```

**Detection:**

```
df -h
du -ah / | sort -rh | head
```

**Recovery:**

```
rm bigfile bigfile2
```

---

### 4. Log Explosion Simulation

**Command used:**

```
while true; do echo "error log spam" >> /var/log/fake.log; done
```

**Recovery:**

```
Ctrl+C
truncate -s 0 /var/log/fake.log
```

---

## Skills Practiced

* Process monitoring
* Memory troubleshooting
* Disk space management
* Incident recovery
* Linux diagnostics

## Conclusion

This lab simulated real production failures and strengthened Linux troubleshooting skills.
