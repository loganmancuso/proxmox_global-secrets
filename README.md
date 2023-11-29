# Terraform Proxmox

This workflow sets up a terraform state with secrets available to downstream workflows 
it will consume a set of variables as plaintext and send them to the locally hosted hashicrop vault 

##### Dependancies
- loganmancuso_infrastructure/applications/hashicorp-vault>
- loganmancuso_infrastructure/proxmox/vault-infrastructure>

### Conventions
---
#### Vault Paths

path of secrets in the vault will follow the pattern below
`/secrets/{shared,infra,app}/{key}`

## Deployment
to deploy this workflow link the environment tfvars folder to the root directory. 
```bash
  ln -s env/main.tf
  ln -s env/terraform.tfvars

  tofu init .
  tofu plan
  tofu apply
```
