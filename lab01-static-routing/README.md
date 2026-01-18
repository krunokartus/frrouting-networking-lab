# Lab 01: Static Routing

## Goal
Establish connectivity between two hosts (PC1 and PC2) separated by two routers using manual static routes.

## Topology
![Lab 01 Topology](./diagrams/lab01_topology.png)

## Concepts
- IP Addressing (Subnetting /30 for point-to-point)
- Static Routes (`ip route`)
- IP Forwarding in Linux
- Connectivity verification (ping, traceroute)

## IP Plan
| Node | Interface | IP Address |
| :--- | :--- | :--- |
| **PC1** | eth1 | 192.168.10.10/24 (GW: 192.168.10.1) |
| **Router1** | eth1 | 192.168.10.1/24 |
| **Router1** | eth2 | 10.0.0.1/30 |
| **Router2** | eth1 | 10.0.0.2/30 |
| **Router2** | eth2 | 192.168.20.1/24 |
| **PC2** | eth1 | 192.168.20.10/24 (GW: 192.168.20.1) |

## Verification
1. Ping from PC1 to PC2: `ping 192.168.20.10`
2. Inspect routing table on R1: `show ip route`
3. Trace path from PC1: `traceroute 192.168.20.10`
