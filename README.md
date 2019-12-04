# vagrant-aws-operations-test

(c) Andre Lohmann (and others) 2019

## Maintainer Contact
 * Andre Lohmann
   <lohmann.andre (at) gmail (dot) com>

## content

This vagrant machine will evaluate the availability of all neccessary dependencies to run the aws operations stack

## Prequesites

### VirtualBox

  * install the latest virtualbox from oracle repositories (https://www.virtualbox.org/wiki/Downloads)
  * if you are on a linux distro, follow the instructions to add the oracle repo
  * install the latest Oracle VM VirtualBox Extension Pack

### Vagrant

#### cli

  * Install the latest vagrant (https://www.vagrantup.com/downloads.html)

#### plugins

the vagrant machines depends on two vagrant plugins.

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-sshfs
```

these pluins should get installed automatically on a "vagrant up", if that fails anyways, please manually install the plugins by entering the commands

##### Windows

If you are on Microsoft Window, you need to install openssh.

https://docs.microsoft.com/de-de/windows-server/administration/openssh/openssh_install_firstuse

### AWS

  * Create IAM User (with FullAdmin permissions preferred)
  * fetch Programmatic Access Credentials

## usage

### upstart

  * clone the repo and change to the directory
  * copy ansible_vagrant/custom_vars.yml.example to ansible_vagrant/custom_vars.yml and set your credentials
  * run the machine

```
vagrant up
```

### run the tests

#### aws-cli

after the vagrant machine is up and running, enter the machine

```
vagrant ssh
```

and do a aws-cli "hello world", to check if the credentials are working

```
aws ssm list-documents
```

no errors should be generated, insted you should see a big json list of documents

#### terraform

change to the terraform directory

```
vagrant@ubuntu-bionic:~$ cd terraform
```

follow the path on [terraform/README.md](terraform/README.md)

don't forget to run the destroy command after your test has finished!
