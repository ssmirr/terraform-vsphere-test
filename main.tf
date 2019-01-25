variable "vsphere_user" {
  description = "Username used to authenticate to VMware vSphere."
  type = "string"
}

variable "vsphere_password" {
  description = "Password used to authenticate to VMware vSphere."
  type = "string"
}

variable "vsphere_server" {
  description = "Hostname of VMware vSphere server."
  type = "string"
  default = "vcsa04.csc.ncsu.edu"
}

variable "vsphere_allow_unverified_ssl" {
  description = "Allow unverified SSL. Use if you have a self-signed certificate."
  type = "string"
  default = "true"
}


provider "vsphere" {

  user                 = "${var.vsphere_user}"
  password             = "${var.vsphere_password}"
  vsphere_server       = "${var.vsphere_server}"
  allow_unverified_ssl = "${var.vsphere_allow_unverified_ssl}"
  version              = "~> 1.9"

}


module "vsphere_vm_ubuntu_bionic" {

  // Module source
  source = "./modules/vsphere-vm"

  // Override module variable defaults
  vsphere_vm_name = "ewhorton-ubuntu-bionic"

}
