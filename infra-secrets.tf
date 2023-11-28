##############################################################################
#
# Author: Logan Mancuso
# Created: 11.27.2023
#
##############################################################################

# resource "vault_kv_secret_v2" "example" {
#   mount                      = vault_mount.kvv2.path
#   name                       = "secret"
#   cas                        = 1
#   delete_all_versions        = true
#   data_json                  = jsonencode(
#   {
#     zip       = "zap",
#     foo       = "bar"
#   }
#   )
#   custom_metadata {
#     max_versions = 5
#     data = {
#       foo = "vault@example.com",
#       bar = "12345"
#     }
#   }
# }