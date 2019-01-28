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