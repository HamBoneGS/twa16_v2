usage:

runs on Ubuntu 20.04

requires packages: terraform, ansible
requires SSH key associated with DigitalOcean account located in ~/.ssh/

-cd into working directory ~/apache_nolog/ (Locally)
- run `terraform apply -var "pvt_key=$HOME/.ssh/id_rsa" -var "do_token= ~DO PAT TOKEN VALUE HERE~ `
- type "yes" when prompted
- run `ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook ./Ansible/playbook.yml -i ./Ansible/hosts`


host is now live at outputted ipv4 address
