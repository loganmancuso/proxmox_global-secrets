# Terraform Proxmox

This workflow sets up a terraform state with secrets available to downstream workflows 

## Vault Structure

path of secrets in the vault will follow the pattern below
/secrets/{shared,infra,app}/{key}

### Deploying Secrets
this workflow will send secret data to vault for shared, infra, and app secrets. 

## Usage
to deploy this workflow link the environment tfvars folder to the root directory. 
```bash
  ln -s env/main.tf
  ln -s env/terraform.tfvars

  tofu init .
  tofu plan
  tofu apply
```
