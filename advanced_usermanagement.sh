#!/bin/bash

# Create a new user
useradd john

# Set the user's password
echo "john:securepass" | chpasswd

# Add the user to the 'project_team' group
usermod -aG project_team john

# Grant sudo access for specific commands
echo "john ALL=(ALL) /usr/bin/git, /usr/bin/make" >> /etc/sudoers

# Revoke sudo access if no longer needed
sed -i '/john ALL=(ALL) \/usr\/bin\/git, \/usr\/bin\/make/d' /etc/sudoers
