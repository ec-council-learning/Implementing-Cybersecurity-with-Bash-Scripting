#!/bin/bash

for user in alice bob carol; do
  useradd $user
  usermod -aG developers $user
  echo "$user:password" | chpasswd
Done

