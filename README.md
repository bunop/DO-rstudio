
Rstudio server on DigitalOcean using Terraform
==============================================

This example project will raise an [rstudio-server](https://marketplace.digitalocean.com/apps/rstudio)
instance on DigitalOcean using [terraform](https://www.terraform.io/)
with [digitalocean](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)
provider.

This branch in particular will start the rstudio image from a custom image (ideally
a snaphsot derived from a working image). The data resource:

```
data "digitalocean_image" "rstudio" {
  name = var.IMAGE
}
```

Will search for a custom image in the user space using `var.IMAGE` as an input. Set
your image name by overriding the default `IMAGE` name defined in `vars.tf`

## Set up a custom .tfvars file

Add custom variables and override default parameters using a `*.tfvars` file
(**not tracked and not to be tracked in this repository**). For example:

```
MY_IP_ADDRESS = <your ip address>
DO_TOKEN      = <your token>
SIZE          = "s-1vcpu-2gb"
DOMAIN_NAME   = <your digitalocean managed domain>
IMAGE         = <your rstudio snaphsot>
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
