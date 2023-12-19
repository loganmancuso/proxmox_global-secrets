##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

resource "vault_kv_secret_v2" "nginx" {
  mount               = local.vault_app_path
  name                = "nginx-proxymanager"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.nginx_proxymanager)
}

resource "vault_kv_secret_v2" "homeassistant" {
  mount               = local.vault_app_path
  name                = "homeassistant"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.homeassistant)
}