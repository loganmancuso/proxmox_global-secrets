##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

data "terraform_remote_state" "hashicorp_vault" {
  backend = "http"
  config = {
    address  = "https://gitlab.com/api/v4/projects/52530007/terraform/state/hashicorp-vault"
    username = "loganmancuso"
  }
}

data "terraform_remote_state" "vault_infrastructure" {
  backend = "http"
  config = {
    address  = "https://gitlab.com/api/v4/projects/52104036/terraform/state/vault-infrastructure"
    username = "loganmancuso"
  }
}

locals {
  # hashicorp_vault
  cert_root       = data.terraform_remote_state.hashicorp_vault.outputs.cert_root
  root_priv_key   = data.terraform_remote_state.hashicorp_vault.outputs.root_priv_key
  root_pub_key    = data.terraform_remote_state.hashicorp_vault.outputs.root_pub_key
  cert_intranet   = data.terraform_remote_state.hashicorp_vault.outputs.cert_intranet
  client_priv_key = data.terraform_remote_state.hashicorp_vault.outputs.client_priv_key
  client_pub_key  = data.terraform_remote_state.hashicorp_vault.outputs.client_pub_key
  # vault_infrastructure
  vault_shared_path = data.terraform_remote_state.vault_infrastructure.outputs.vault_shared_path
  vault_infra_path  = data.terraform_remote_state.vault_infrastructure.outputs.vault_infra_path
  vault_app_path    = data.terraform_remote_state.vault_infrastructure.outputs.vault_app_path
}
