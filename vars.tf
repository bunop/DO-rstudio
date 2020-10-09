
variable "DO_TOKEN" {}

# set domain name
variable "DOMAIN_NAME" {
  type = string
}

# Name of your project. Will be prepended to most resources
variable "PROJECT" {
  type    = string
  default = "rstudio-server"
}

# The region to deploy our infrastructure to.
variable "REGION" {
  type    = string
  default = "fra1"
}

# The size we want our droplets to be.
# Can view slugs (valid options) https://slugs.do-api.dev/
variable "SIZE" {
  type    = string
  default = "s-1vcpu-1gb"
}

# The operating system image we want to use.
# Can view slugs (valid options) https://slugs.do-api.dev/
variable "IMAGE" {
  type    = string
  default = "simplystatistics-rstudio-18-04"
}

# the name of the created droplet
variable "DROPLET_NAME" {
  type    = string
  default = "rstudio-server"
}

# my IP address (which is allowed to connect)
variable "MY_IP_ADDRESS" {
  type = string
}

# the VPC used
variable "VPC_NAME" {
  type    = string
  default = "default-fra1"
}
