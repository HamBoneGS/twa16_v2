resource "digitalocean_droplet" "www-1" {
  image              = "ubuntu-18-04-x64"
  name               = "www-1"
  region             = "nyc3"
  size               = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.Oct_SSH.id
  ]
}

resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl",
    {
      droplet_ip = digitalocean_droplet.www-1.ipv4_address
    }
  )
  filename = "./Ansible/hosts"
}

output "ipv4_address" {
  value = digitalocean_droplet.www-1.ipv4_address
}
