resource "vsphere_virtual_machine" "vm" {

  name             = "${var.vsphere_vm_name}"
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  num_cpus         = "${var.vsphere_vm_cpus}"
  memory           = "${var.vsphere_vm_memory}"
  guest_id         = "${var.vsphere_vm_guest_id}"

  // Network provisioning options. Don't wait for the guest to get an IP address
  wait_for_guest_net_timeout = -1
  wait_for_guest_net_routable = false

  network_interface {
    network_id     = "${data.vsphere_network.network.id}"
  }

  disk {
    label          = "disk0"
    size           = "${var.vsphere_vm_disk_size}"
  }

  clone {

    template_uuid = "${data.vsphere_virtual_machine.template.id}"

    customize {

      linux_options {
        domain = "${var.vsphere_vm_domain}"
        host_name = "${var.vsphere_vm_name}"
      }

      network_interface {}

    }

  }

}
