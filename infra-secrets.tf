##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

resource "vault_kv_secret_v2" "thoth" {
  mount               = local.vault_infra_path
  name                = "thoth"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.thoth)
}


resource "vault_kv_secret_v2" "k8_postgres" {
  mount               = local.vault_infra_path
  name                = "k8_postgres"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.k8_postgres)
}
