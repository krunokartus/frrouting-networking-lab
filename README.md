# FRRouting Networking Lab Portfolio

This repository contains a series of networking labs designed to practice CCNA-level concepts using **FRRouting (FRR)** and **Containerlab**.

## Portfolio Structure

Each lab is self-contained in its own directory with the following structure:
- `lab.clab.yml`: Topology definition.
- `README.md`: Lab objectives, concepts, and verification steps.
- `configs/`: Device configurations (e.g., `frr.conf`).
- `scripts/`: Initialization or automation scripts.
- `diagrams/`: Visual representation of the topology.
- `screenshots/`: Proof of completion and troubleshooting.

## Labs

1.  **[Lab 01: Static Routing](./lab01-static-routing)** - Manual route configuration between two routers.
2.  **[Lab 02: Default Gateway](./lab02-default-gateway)** - Understanding gateway concepts for end hosts.
3.  **[Lab 03: Connected Routes](./lab03-connected-routes)** - How routers learn about directly attached networks.
4.  **[Lab 04: NAT](./lab04-nat)** - Network Address Translation for internet access.
5.  **[Lab 05: Static Routing + NAT](./lab05-static-routing+nat)** - Combining routing with address translation.
6.  **[Lab 06: OSPF Simple](./lab06-ospf-simple)** - Basic dynamic routing with OSPFv2.
7.  **[Lab 07: OSPF Multiple Areas](./lab07-ospf-multiple-areas)** - Scaling OSPF with areas.
8.  **[Lab 08: Access Lists](./lab08-access-lists)** - Implementing security and traffic filtering.
9.  **[Lab 09: OSPF + NAT](./lab09-ospf+nat)** - Complex dynamic routing and NAT integration.
10. **[Lab 10: Troubleshooting](./lab10-troubleshooting)** - Advanced scenario for fixing broken connectivity.

## Prerequisites
- [Containerlab](https://containerlab.dev/)
- [Docker](https://www.docker.com/) or [Podman](https://podman.io/)
- [FRR Image](https://hub.docker.com/r/frrouting/frr)

## How to run
Navigate to a lab directory and run:
```bash
sudo containerlab deploy -t lab.clab.yml
```