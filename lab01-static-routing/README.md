# Lab 01: Static Routing

## Goal
Establish connectivity between two hosts (PC1 and PC2) separated by two routers using manual static routes.

## Topology
`PC1 --- R1 --- R2 --- PC2`

## Concepts
- IP Addressing
- Static Routes (`ip route` / FRR `ip route`)
- IP Forwarding in Linux
- Connectivity verification (ping, traceroute)

## Verification
1. Ping from PC1 to PC2.
2. `show ip route` on R1 and R2.
3. `traceroute` from PC1 to PC2.
