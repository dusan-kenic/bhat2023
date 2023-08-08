---
layout: page
title: Managing the course Virtual Machines
---

## Starting, Suspend-to-Disk and Viewing Virtual Machines

### Terminal Instructions

- `sudo virsh start vmname`    (starts or unsuspends VM)
- `sudo virsh managedsave vmname` (suspends a VM)
- `sudo virsh list --all`   (lists VMs and shows status)
