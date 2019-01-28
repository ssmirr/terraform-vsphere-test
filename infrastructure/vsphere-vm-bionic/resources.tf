module "vsphere_vm_ubuntu_bionic" {

  // Module source
  source = "../..//modules/vsphere-vm"

  // Override module variable defaults
  vsphere_vm_name = "ewhorton-ubuntu-bionic"
  vsphere_vm_template = "templates/ubuntu-server-18.04.1-bionic"

}