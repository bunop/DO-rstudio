
resource "digitalocean_firewall" "wp5image" {
  # Human friendly name of the firewall
  name = "rstudio-server"

  # Droplets to apply the firewall to
  droplet_ids = [digitalocean_droplet.rstudio.id]

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["${var.MY_IP_ADDRESS}/32"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["${var.MY_IP_ADDRESS}/32"]
  }

  # shiny server
  inbound_rule {
    protocol         = "tcp"
    port_range       = "3838"
    source_addresses = ["${var.MY_IP_ADDRESS}/32"]
  }

  # rstudio server
  inbound_rule {
    protocol         = "tcp"
    port_range       = "8787"
    source_addresses = ["${var.MY_IP_ADDRESS}/32"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

}
