#!/bin/bash


# Set Terraform environment variables corresponding to the vSphere
# authentication variables. This masks the password when prompted and prevents
# the user from needing to enter credentials every time Terraform is run.
# Usage: `source ./setauth.sh`.


read -p "vSphere Username: " TF_VAR_vsphere_user
export VSPHERE_USER=$TF_VAR_vsphere_user

read -p "vSphere Password: " -s TF_VAR_vsphere_password
export VSPHERE_PASSWORD=$TF_VAR_vsphere_password
echo ''
