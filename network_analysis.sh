#!/bin/bash

# Step 1: Check if the interface argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <network_interface>"
  exit 1
fi

interface="$1"

# Step 2: Run the Initial Network Activity Script (network.sh)
echo "Running the network activity script..."
./network.sh

# Step 3: Capture Network Traffic with tcpdump
capture_file="/tmp/tcpdump_capture.pcap"
duration="60"  # Duration in seconds
max_packets=1000  # Maximum number of packets to capture

echo "Capturing network traffic on interface $interface for $duration seconds or $max_packets packets..."
timeout $duration tcpdump -i $interface -c $max_packets -w $capture_file

# Step 4: Analyze the Captured Traffic
echo "Analyzing the captured traffic..."
tcpdump -r $capture_file | grep "TCP" > /tmp/tcp_traffic_analysis.txt
tcpdump -r $capture_file | grep "UDP" > /tmp/udp_traffic_analysis.txt

# Step 5: Summarize the Findings
echo "Summarizing the network traffic analysis..."
echo "TCP Traffic Summary:" > /tmp/network_summary.txt
cat /tmp/tcp_traffic_analysis.txt >> /tmp/network_summary.txt
echo -e "\nUDP Traffic Summary:" >> /tmp/network_summary.txt
cat /tmp/udp_traffic_analysis.txt >> /tmp/network_summary.txt
echo "Network monitoring complete. Reports and captures saved in /tmp/"



