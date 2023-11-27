##############################################################################
#
# Author: Logan Mancuso
# Created: 07.30.2023
#
##############################################################################

data "terraform_remote_state" "datacenter_infrastructure" {
  backend = "http"
  config = {
    address  = "https://gitlab.com/api/v4/projects/48634510/terraform/state/bytevault"
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
  # datacenter_infrastructure
  node_name = data.terraform_remote_state.datacenter_infrastructure.outputs.node_name
  node_ip   = data.terraform_remote_state.datacenter_infrastructure.outputs.node_ip
  # vault_infrastructure
  vault_shared_path = data.terraform_remote_state.vault_infrastructure.outputs.vault_shared_path
  vault_infra_path  = data.terraform_remote_state.vault_infrastructure.outputs.vault_infra_path
  vault_app_path    = data.terraform_remote_state.vault_infrastructure.outputs.vault_app_path
}