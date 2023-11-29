##############################################################################
#
# Author: Logan Mancuso
# Created: 11.27.2023
#
##############################################################################

## Shared Secrets ##

variable "instance_credentials" {
  description = "default credentials for an instance {username,password,hashed_password,salt}"
  type        = map(string)
  sensitive   = true
}

## Infra Secrets ##

variable "k8_postgres" {
  description = "k8 postgres cluster credentials {username,password}"
  type        = map(string)
  sensitive   = true
}