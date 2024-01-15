##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

resource "vault_kv_secret_v2" "proxmox" {
  mount               = local.vault_shared_path
  name                = "proxmox"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.proxmox)
}

resource "vault_kv_secret_v2" "instance" {
  mount               = local.vault_shared_path
  name                = "instance"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.instance)
}