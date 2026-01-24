# Lab 02: Connected Routes

## Goal
Establish connectivity between three hosts (PC1, PC2, and PC3) connected to a single router. This lab demonstrates how a routing table is automatically populated with directly connected routes and how the router bridges traffic between these subnets.

## Topology
![Lab 02 Topology](diagrams/lab03_connected_routes_topol.jpg)

## Concepts
- **Directly connected routes:** Routes automatically added when an interface is configured with an IP and brought UP.
- **Routing table analysis:** Identifying route types (Type 'C' for connected in FRR).
- **Basic IP forwarding:** Using connected routes to bridge traffic between subnets.

## IP plan
| Node | Interface | IP Address | Gateway |
| :--- | :--- | :--- | :--- |
| **PC1** | eth1 | 192.168.10.10/24 | 192.168.10.1 |
| **Router1** | eth1 | 192.168.10.1/24 | N/A |
| **Router1** | eth2 | 192.168.20.1/24 | N/A |
| **Router1** | eth3 | 192.168.30.1/24 | N/A |
| **PC2** | eth1 | 192.168.20.10/24 | 192.168.20.1 |
| **PC3** | eth1 | 192.168.30.10/24 | 192.168.30.1 |

## Lab Execution
**Running first script**:
```bash
./scripts/starting.sh
```
The script deploys the topology and shows the status of the containers.

## Verification

### 1. Routing table inspection
Since three router interfaces were configured on three different networks, the router automatically adds these as 'Directly Connected' routes. This is a key concept: because the router has a physical presence (an IP address) in each of these three networks, it already knows how to reach them and can route traffic between these subnets immediately, acting as the gateway for all of them.
```bash
# router1
show ip route
```
![Router 1 Connected Routes](./screenshots/router1-ip-route.png)

### 2. Connectivity tests
Maschines are connected to the router and can ping endpoints in other two subnets.
```bash
# pc1
ping 192.168.20.10
ping 192.168.30.10
```
![Connectivity test from PC1](./screenshots/pc1-ping-pc2-3.png)

## Destroying the lab
**Running second script**:
```bash
./scripts/destroying.sh
```
The script removes the `clab` directory and destroys the environment.
