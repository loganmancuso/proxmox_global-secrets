##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

# Shared Secrets #
output "vault_shared_instance_credentials" {
  description = "path in vault to instance_credentials secret"
  value       = vault_kv_secret_v2.instance_credentials.name
}

# Infra Secrets
output "vault_infra_k8_postgres" {
  description = "path in vault to k8_postgres secret"
  value       = vault_kv_secret_v2.k8_postgres.name
}

output "vault_infra_pgadmin4" {
  description = "path in vault to pgadmin4 secret"
  value       = vault_kv_secret_v2.pgadmin4.name
}