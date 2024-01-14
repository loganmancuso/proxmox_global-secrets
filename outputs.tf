##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

## CA Certs ##
output "cert_root" {
  description = "root certificate authority"
  value       = local.cert_root
}
output "root_priv_key" {
  description = "root certificate authority private key"
  value       = local.root_priv_key
  sensitive   = true
}
output "root_pub_key" {
  description = "root certificate authority public key"
  value       = local.root_pub_key
}
output "client_priv_key" {
  description = "client certificate private key"
  value       = local.client_priv_key
  sensitive   = true
}
output "client_pub_key" {
  description = "client certificate public key"
  value       = local.client_pub_key
}
output "cert_intranet" {
  description = "client certificate"
  value       = local.cert_intranet
}


## Shared Secrets ##
output "instance_credentials" {
  description = "path in vault to instance_credentials secret"
  value = {
    mount = local.vault_shared_path
    name  = vault_kv_secret_v2.instance_credentials.name
  }
}

## Infra Secrets ##
output "thoth" {
  description = "path in vault to thoth secret"
  value = {
    mount = local.vault_infra_path
    name  = vault_kv_secret_v2.thoth.name
  }
}

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