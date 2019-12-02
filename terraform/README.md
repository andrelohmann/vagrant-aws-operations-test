# Terraform Test Resources

## Description

This terraform definition creates a simple test resource and demonstrates the usage of terraform

## Commands

### terraform init

initialize the terraform definition

```
terraform init
```

### terraform plan

run terraform plan, to see changes that will be done

```
terraform plan -var-file=vars.tfvars
```

### terraform apply

apply all changes

```
terraform apply -var-file=vars.tfvars
```

### terraform destroy

destroy all resources


```
terraform destroy -var-file=vars.tfvars
```
