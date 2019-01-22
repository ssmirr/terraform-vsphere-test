# Terraform ESXi Tests

This is a test/example of how to bring up a server and configure networking on 
a VMware host using [Terraform](https://terraform.io).

Terraform will prompt for credentials if not provided (because we ), but the prompt is in
plain text. A better option is to export credentials to the environment. For
convenience, the script `setauth.sh` is provided. Run `source ./setauth.sh`
to be prompted for credentials.

To get started, run `terraform init`. This will install and configure the
necessary modules and plugins. Then run `terraform apply` to generate and
execute a plan.