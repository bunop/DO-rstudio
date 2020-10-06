
resource "digitalocean_record" "rstudio" {
  # Get the domain from our data source
  domain = data.digitalocean_domain.personal.name

  # An A record is an IPv4 name record. Like www.digitalocean.com
  type = "A"

  # Set the name to login-name-region
  name = "rstudio"

  # Point the record at the IP address of our droplet
  value = digitalocean_droplet.rstudio.ipv4_address

  # The Time-to-Live for this record is 30 seconds. Then the cache invalidates
  ttl = 300
}
