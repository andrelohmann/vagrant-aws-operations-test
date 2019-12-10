# Packer Test AMIs

## Description

These packer templates will help you create your first custom AMIs to demonstrate the usage of packer

packer validate -var-file="./variables.json" ubuntu.json

packer build -var-file="./variables.json" ubuntu.json


## Commands

### packer validate

validate the packer file

```
packer validate -var-file=../variables.json packer.json
```

### packer build

build your AMI with packer

```
packer build -var-file=../variables.json packer.json
```
