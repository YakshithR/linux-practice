# Linux Practice Lab

## Day 1 – User Management & Permissions

### Objective
Simulate a company environment with multiple teams and control access using Linux permissions.

### Tasks Completed

#### 1. Created User Groups
- dev
- test
- operations
- admin

#### 2. Created 50+ Users Using Loop

Example:

for i in {1..10}; do sudo useradd -m dev$i; done

#### 3. Assigned Passwords

for i in {1..10}; do echo "dev$i:Temp@123" | sudo chpasswd; done

#### 4. Added Users to Groups

for i in {1..10}; do sudo usermod -aG dev dev$i; done

#### 5. Permission Management

- Used chmod to control file access
- Used chown to change ownership
- Simulated company folder structure:
  /company/dev
  /company/testing
  /company/production
  /company/backup

#### 6. SSH & Git Integration

- Generated SSH key
- Connected AWS instance to GitHub
- Initialized Git repo
- Pushed project successfully

### Skills Practiced

- Linux user & group administration
- Shell scripting with loops
- File permissions
- SSH authentication
- Git version control
