# FRROUTING NETWORKING LAB
> Structured networking scenarios for CCNA and Linux Sysadmin practice using **FRRouting** and **Containerlab**.

---

### Core Concepts
*   **Layer 3:** IPv4 Subnetting, Gateway redundancy, Static Routing.
*   **Dynamic Routing:** OSPFv2 (Single & Multi-area).
*   **Network Security:** Access Control Lists (ACL) and Statefull NAT.
*   **Infrastructure as Code:** Automated topology deployment with Containerlab.

---

### Lab Portfolio

1.  **[Lab 01: Static Routing](./lab01-static-routing)** - Manual route configuration between multiple hops.
2.  **[Lab 02: Default Gateway](./lab02-default-gateway)** - Understanding host-to-router connectivity.
3.  **[Lab 03: Connected Routes](./lab03-connected-routes)** - Analysis of routing table population.
4.  **[Lab 04: NAT](./lab04-nat)** - Network Address Translation for edge connectivity.
5.  **[Lab 05: Static Routing + NAT](./lab05-static-routing+nat)** - Combining manual routing with address translation.
6.  **[Lab 06: OSPF Simple](./lab06-ospf-simple)** - Basic dynamic routing setup.
7.  **[Lab 07: OSPF Multiple Areas](./lab07-ospf-multiple-areas)** - Scaling networks with OSPF areas.
8.  **[Lab 08: Access Lists](./lab08-access-lists)** - Traffic filtering and security basics.
9.  **[Lab 09: OSPF + NAT](./lab09-ospf+nat)** - Complex integration of dynamic routing and NAT.
10. **[Lab 10: Troubleshooting](./lab10-troubleshooting)** - Identifying and fixing connectivity issues in a broken lab.

---

### Workflow
Each lab directory contains:
- `lab.clab.yml`: Topology definition (Nodes, Links, Images).
- `README.md`: Objectives, concepts, and verification steps.
- `configs/`: FRR configuration files (`frr.conf`).
- `diagrams/`: Visual representation of the network.

### Prerequisites
- [Containerlab](https://containerlab.dev/) installed on a Linux host (Docker or Podman runtime).

---
*Created for CCNA and Linux Junior portfolio building.*