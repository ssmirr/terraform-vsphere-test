module "vsphere_vm_ubuntu_xenial" {

  // Module source
  source = "../../modules/vsphere-vm"

  // Override module variable defaults
  vsphere_vm_name = "ewhorton-ubuntu-xenial"
  vsphere_vm_template = "templates/ubuntu-server-16.04.5-xenial"

}