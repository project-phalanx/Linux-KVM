#! /bin/bash
exec /usr/bin/qemu-system-x86_64 -enable-kvm -name debian-testing -bios OVMF.fd -smp cpus=2,sockets=1,cores=2,threads=1 -cpu host -machine q35,accel=kvm -m 1024 -vga qxl -vnc :1 -nographic -drive file=/dev/vg_kvm/debian,if=virtio,aio=native,format=raw,cache=none -netdev tap,helper=/usr/libexec/qemu-bridge-helper,id=net0 -device virtio-net-pci,netdev=net0,id=vmnic -device intel-iommu -device ich9-ahci,id=ahci -device usb-ehci,id=ehci -device usb-tablet,bus=ehci.0 -device virtio-rng-pci -debugcon file:debug.log -global isa-debugcon.iobase=0x402 $@
