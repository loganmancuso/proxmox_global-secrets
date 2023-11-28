##############################################################################
#
# Author: Logan Mancuso
# Created: 11.27.2023
#
##############################################################################

## Shared Secrets ##

# Instance Credentials #
variable "instance_username" {
  description = "default username for an instance"
  type        = string
  default     = "instance-user"
}

variable "instance_password" {
  description = "default password for an instance"
  type        = string
  sensitive   = true
}

variable "instance_hashed_password" {
  description = "hashed password using `mkpasswd -m sha-512 $PASSWORD $SALT`"
  sensitive   = true
  type        = string
}

variable "instance_hashed_salt" {
  description = "salt used to hash instance password using `mkpasswd -m sha-512 $PASSWORD $SALT`"
  sensitive   = true
  type        = string
}

## Infra Secrets ##

# K8 Postgres #
variable "k8_pg_username" {
  description = "username for k8 postgres cluster"
  type        = string
  default = "k8pgadmin"
}
variable "k8_pg_password" {
  description = "password for k8 postgres cluster"
  sensitive = true
  type        = string
}