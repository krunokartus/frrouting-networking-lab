# FRROUTING NETWORKING LAB
> Structured networking scenarios practice using **FRRouting** and **Containerlab**.

---

### Core Concepts
*   **Layer 3:** IPv4 subnetting, gateway redundancy, static routing.
*   **Dynamic routing:** OSPFv2 (single and multi-area).
*   **Network security:** access control lists (ACL) and stateful NAT.
*   **Infrastructure as Code:** automated topology deployment with Containerlab.

---

### Lab Portfolio

1.  **[Lab 01: static routing](./lab01-static-routing)** - manual route configuration between multiple hops.
2.  **[Lab 02: default gateway](./lab02-default-gateway)** - understanding host-to-router connectivity.
3.  **[Lab 03: connected routes](./lab03-connected-routes)** - analysis of routing table population.
4.  **[Lab 04: NAT](./lab04-nat)** - network address translation for edge connectivity.
5.  **[Lab 05: static routing + NAT](./lab05-static-routing+nat)** - combining manual routing with address translation.
6.  **[Lab 06: OSPF simple](./lab06-ospf-simple)** - basic dynamic routing setup.
7.  **[Lab 07: OSPF multiple areas](./lab07-ospf-multiple-areas)** - scaling networks with OSPF areas.
8.  **[Lab 08: access lists](./lab08-access-lists)** - traffic filtering and security basics.
9.  **[Lab 09: OSPF + NAT](./lab09-ospf+nat)** - complex integration of dynamic routing and NAT.
10. **[Lab 10: troubleshooting](./lab10-troubleshooting)** - identifying and fixing connectivity issues in a broken lab.

---

### Workflow
Each lab directory contains:
- `lab.clab.yml`: topology definition (nodes, links, images).
- `README.md`: objectives, concepts, and verification steps.
- `configs/`: FRR configuration files (`frr.conf`).
- `diagrams/`: visual representation of the network.

### Prerequisites and Setup

Before running any lab, ensure you have **Containerlab** and a container runtime installed. Containerlab orchestrates the networking nodes, but it depends on a runtime to manage the actual containers.

#### 1. Install container runtime
You can use either Docker or Podman. Docker is the standard and most tested choice for these labs.

**Docker installation (recommended)**
1. Run the official installation script:
   ```bash
   curl -fsSL https://get.docker.com -o get-docker.sh
   sudo sh get-docker.sh
   ```
2. Enable and start the service:
   ```bash
   sudo systemctl enable --now docker
   ```

**Podman installation (alternative)**
If you prefer Podman, install it via your package manager:
```bash
sudo apt update
sudo apt install podman -y
```

#### 2. Install Containerlab
After installing the runtime, install Containerlab:
```bash
curl -sL https://containerlab.dev/setup | sudo bash -s installer
```

#### 3. System requirements and dependencies
- **Linux kernel:** Requires a modern Linux kernel with support for namespaces, cgroups, and veth pairs (standard in most distributions like Ubuntu or Debian).
- **Network tools:** Some labs may require `bridge-utils` or `iproute2` on the host, though most tools are contained within the lab nodes.
- **Permissions:** Commands for deploying topologies usually require `sudo` privileges.