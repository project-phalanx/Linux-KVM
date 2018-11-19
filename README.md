# Linux-KVM Template

## Pre-Requisite
* Intel Clear Linux as a KVM Host
  * Small foot print with extreme performance

## Concept
* This repository provides scripts to setup KVM guests on Clear Linux KVM host
* Do NOT use Graphical User Interface (for KVM host) to reduce resource usage. Do NOT use Virt Manager.
* Create a template to easily deploy an optimized KVM guest
  * Use x86-64
  * Use same CPU type as host
  * Use Q35 machine type instead of FX440
  * Use UEFI instead of legacy BIOS
  * etc

## Setup KVM on ClearLinux
1. Install required bundle
2. Create Linux Bridge or Open vSwitch
3. Allow QEMU to add the interface to the bridge (/etc/qemu/bridge.conf)

## VM Template
### Naming Convention
{host_os_name}-{guest_os_type}-{linux-bridge_or_open_vswitch}-{disk_type_image_or_lvm}.sh

### User Configuration
* A user may need to modify the script to adjust to your environment
  * Hostname
  * The path to the Hard Disk image
  * Name of Bridge / OVSwitch
