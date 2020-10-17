terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "do_token" {
  default = "728b8066aeeeeb8d24ae82534606ff26a8736c6ccfbdf864ee863c28fbd39b8f"
}
variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "Oct_SSH" {
  name = "Oct_SSH"
}
