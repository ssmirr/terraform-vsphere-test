# Terraform ESXi Tests

This is a test/example of how to bring up a server and configure networking on 
a VMware host using [Terraform](https://terraform.io).

Terraform will prompt for credentials if not provided, but the prompt is in
plain text. A better option is to export credentials to the environment. For
convenience, the script `setauth.sh` is provided. Run `source ./setauth.sh`
to be prompted for credentials.

To get started, run `terraform init`. This will install and configure the
necessary modules and plugins. Then run `terraform apply` to generate and
execute a plan.

# Templates

## Ubuntu 18.04 Bionic

There is a documented issue with VMware open-vm-tools on Ubuntu 18.04 bionic
that causes Terraform apply to fail. Symptoms include Terraform outputting
an error mentioning a log file `/var/log/vmware-imc/toolsDeployPkg.log` 
(sometimes appears as `<No Log>`)`. The log file will contain the following
output:

```
Customization command failed: Failed to create bus connection: No such file or directory
```

This is caused by the systemd service execution on boot. More information
can be found in the [VMware Knowled Base](https://kb.vmware.com/s/article/56409).

To fix, comment out the following line from `/usr/lib/tmpfiles.d/tmp.conf`. 

```
D /tmp 1777 root root -
```

Then add the following to `/lib/systemd/system/open-vm-tools.service`.

```
After=dbus.service
```
