
# Create a new Droplet. Using variables and conditional to determine image name
resource "digitalocean_droplet" "rstudio" {
  image  = var.IMAGE
  name   = "rstudio-server"
  region = var.REGION
  size   = var.SIZE

  # The ssh keys to put on the server so we can access it. Read in through a
  # data source
  ssh_keys = [
    data.digitalocean_ssh_key.stretch.id,
    data.digitalocean_ssh_key.desktop.id,
    data.digitalocean_ssh_key.debian.id,
  ]

  # should I resize disk when resizing a droplet?
  resize_disk = false
}

output "rstudio_address" {
  value       = digitalocean_droplet.rstudio.ipv4_address
  description = "The private IP address of the main server instance."
}

output "rstudio_id" {
  value       = digitalocean_droplet.rstudio.id
  description = "The ID the main server instance."
}
