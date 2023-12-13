##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

resource "vault_kv_secret_v2" "k8_postgres" {
  mount               = local.vault_infra_path
  name                = "k8_postgres"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.k8_postgres)
}


resource "vault_kv_secret_v2" "pgadmin4" {
  mount               = local.vault_infra_path
  name                = "pgadmin4"
  cas                 = 1
  delete_all_versions = true
  data_json           = jsonencode(var.pgadmin4)
}