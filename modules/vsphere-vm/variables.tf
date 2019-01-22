variable "vsphere_datacenter" {
  description = "Datacenter for VMware vSphere."
  type = "string"
  default = "EB2-Parnin"
}

variable "vsphere_datastore" {
  description = "Datastore for VMware vSphere."
  type = "string"
  default = "eb2rvx30_local"
}

variable "vsphere_resource_pool" {
  description = "Resource pool for VMware vSphere."
  type = "string"
  default = "eb2rvx30.csc.ncsu.edu/Resources"
}

variable "vsphere_network" {
  description = "Network for VMware vSphere."
  type = "string"
  default = "EB2-CSC-RESEARCH-1-Public"
}

variable "vsphere_vm_name" {
  description = "Name given the the VMware vSphere virtual machine."
  type = "string"
  default = "terraform-test"
}

variable "vsphere_vm_cpus" {
  description = "Number of CPUs made available to the VMware vSphere virtual machine."
  type = "string"
  default = "2"
}

variable "vsphere_vm_memory" {
  description = "Amount of memory (in MB) given to the VMware vSphere virtual machine."
  type = "string"
  default = "1024"
}

variable "vsphere_vm_guest_id" {
  description = "ID of the VMware vSphere virtual machine or template."
  type = "string"
  default = "other3xLinux64Guest"
}

variable "vsphere_vm_disk_size" {
  description = "Size of the VMware vSphere virtual machine disk."
  type = "string"
  default = "20"
}
