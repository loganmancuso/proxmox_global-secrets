##############################################################################
#
# Author: Logan Mancuso
# Created: 11.28.2023
#
##############################################################################

## Shared Secrets ##

variable "proxmox" {
  description = "default credentials for the proxmox instance {root_password, ops_password}"
  type        = map(string)
  sensitive   = true
}

variable "instance" {
  description = "default credentials for an instance {username,password,hashed_password,salt,pub_key}"
  type        = map(string)
  sensitive   = true
}

## Infra Secrets ##

variable "thoth" {
  description = "Thoth Data instance credentials {restic_password}"
  type        = map(string)
  sensitive   = true
}

variable "k8_postgres" {
  description = "k8 postgres cluster credentials {username,password}"
  type        = map(string)
  sensitive   = true
}

## App Secrets ##
variable "nginx_proxymanager" {
  description = "nginx credentials {username,password,db_username,db_password}"
  type        = map(string)
  sensitive   = true
}

variable "homeassistant" {
  description = "homeassistant credentials {zwave_key}"
  type        = map(string)
  sensitive   = true
}

variable "nextcloud" {
  description = "nextcloud credentials {}"
  type        = map(string)
  sensitive   = true
}
