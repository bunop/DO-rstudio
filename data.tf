
data "digitalocean_ssh_key" "stretch" {
  name = "paolo@stretch-desktop"
}

data "digitalocean_ssh_key" "desktop" {
  name = "paolo@desktop"
}

data "digitalocean_ssh_key" "debian" {
  name = "paolo@debian"
}

data "digitalocean_domain" "personal" {
  name = var.DOMAIN_NAME
}

data "digitalocean_vpc" "vpc" {
  name = var.VPC_NAME
}

data "digitalocean_image" "rstudio" {
  name = var.IMAGE
}
