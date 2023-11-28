##############################################################################
#
# Author: Logan Mancuso
# Created: 11.27.2023
#
##############################################################################

resource "vault_kv_secret_v2" "instance_credentials" {
  mount               = local.vault_shared_path
  name                = "instance_credentials"
  cas                 = 1
  delete_all_versions = true
  data_json = jsonencode(
    {
      username        = var.instance_username
      hashed_password = var.instance_hashed_password
      password        = var.instance_password
      salt            = var.instance_hashed_salt
    }
  )
}