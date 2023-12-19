##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

## Shared Secrets ##
output "instance_credentials" {
  description = "path in vault to instance_credentials secret"
  value = {
    mount = local.vault_shared_path
    name  = vault_kv_secret_v2.instance_credentials.name
  }
}

## Infra Secrets ##
output "k8_postgres" {
  description = "path in vault to k8_postgres secret"
  value = {
    mount = local.vault_infra_path
    name  = vault_kv_secret_v2.k8_postgres.name
  }
}

## App Secrets ##
output "nginx_proxymanager" {
  description = "path in vault to nginx secret"
  value = {
    mount = local.vault_app_path
    name  = vault_kv_secret_v2.nginx.name
  }
}
output "homeassistant" {
  description = "path in vault to homeassistant secret"
  value = {
    mount = local.vault_app_path
    name  = vault_kv_secret_v2.homeassistant.name
  }
}