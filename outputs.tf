##############################################################################
#
# Author: Logan Mancuso
# Created: 11.27.2023
#
##############################################################################

# Shared Secrets #
output "vault_path_instance_credentials" {
  description = "path in vault to instance_credentials secret"
  value       = vault_kv_secret_v2.instance_credentials.path
}

# Infra Secrets
output "vault_path_k8_postgres" {
  description = "path in vault to k8_postgres secret"
  value       = vault_kv_secret_v2.k8_postgres.path
}