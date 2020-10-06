
resource "digitalocean_project" "rstudio" {
  name        = var.PROJECT
  description = "Set up a rstudio server"
  purpose     = "Generic"
  environment = "Development"
  resources = [
    digitalocean_droplet.rstudio.urn
  ]
}
