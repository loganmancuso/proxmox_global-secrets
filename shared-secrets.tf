##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

resource "vault_kv_secret_v2" "proxmox_credentials" {
  mount               = local.vault_shared_path
  name                = "proxmox_credentials"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.proxmox_credentials)
}

resource "vault_kv_secret_v2" "instance_credentials" {
  mount               = local.vault_shared_path
  name                = "instance_credentials"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.instance_credentials)
}