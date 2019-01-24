output "${vsphere_virtual_machine.vm.name}: IP Addresses" {
  value = "${vsphere_virtual_machine.vm.guest_ip_addresses}"
}