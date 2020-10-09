
Rstudio server on DigitalOcean using Terraform
==============================================

This example project will raise an [rstudio-server](https://marketplace.digitalocean.com/apps/rstudio)
instance on DigitalOcean using [terraform](https://www.terraform.io/)
with [digitalocean](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)
provider.

## Set up a custom .tfvars file

Add custom variables and override default parameters using a `*.tfvars` file
(**not tracked and not to be tracked in this repository**). For example:

```
MY_IP_ADDRESS = <your ip address>
DO_TOKEN      = <your token>
SIZE          = "s-1vcpu-2gb"
DOMAIN_NAME   = <your digitalocean managed domain>
```

Take a look to `variables.tf` to customize your instance according your needs.

## Plan changes and set up resources with terraform

```bash
# planning changes and write them into a file
$ terraform plan -out changes.tfplan
# apply changes from a file
$ terraform apply "changes.tfplan"
```

### Inspect terraform state

```bash
# display terraform state to output
$ terraform show
# execute output instructions only
$ terraform output
```

## Destroy managed resources with terraform

Plan changes and then destroy:

```bash
$ terraform plan -out changes.tfplan -destroy
$ terraform apply "changes.tfplan"
```

Or destroy all resources with a single command :

```bash
$ terraform destroy
```
