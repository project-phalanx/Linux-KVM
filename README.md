# Linux-KVM Template

## Pre-Requisite
* Intel Clear Linux as a KVM Host
  * Small foot print with extreme performance

## Concept
* Aiming to replace virtual machine host from power hungry VMware ESXi to light weight Linux KVM
* This repository provides scripts to setup KVM guests on Clear Linux KVM host
  * Very light weight and optimized for modern hardware (Sandy Bridge or newer)
  * Just enough functional to be a Virtual Machine Hypervisor
* Do NOT use Graphical User Interface (for KVM host) to reduce resource usage. Do NOT use Virt Manager.
* Create a template to easily deploy an optimized KVM guest
  * Use x86-64
  * Use same CPU type as host
  * Use Q35 machine type instead of FX440
  * Use UEFI instead of legacy BIOS (if possible)
  * Use LVM pool to avoid nested filesystem (if possible)
  * Use PCIe Passthrough (available soon...)
  * etc

## Setup KVM on ClearLinux
1. Install required bundle
2. Create Linux Bridge or Open vSwitch
3. Allow QEMU to add the interface to the bridge (/etc/qemu/bridge.conf)

## VM Template
### Naming Convention
{host_os}-{guest_os_type}-{machine_type}-{bridge_type}-{disk_type}-{remote_connection}-{special_function}.sh

### User Configuration
* A user may need to modify the script to adjust to your environment
  * Hostname
  * The path to the Hard Disk image
  * Name of Bridge / OVSwitch
