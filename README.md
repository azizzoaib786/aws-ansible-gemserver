# Ansible Setup for Fidor's Rubygem Server

## Requirements:

* Centos 7.x
* User "deploy" with sudo

## Usage

Install Ansible:

```shell
$ brew install ansible
```

Run:

```shell
$ cd provisioning
$ ansible-galaxy install rvm.ruby
$ ansible-playbook -i hosts --become playbook.yml
```

## Development:

You can use Vagrant to test the playbook.

```shell
$ vagrant up
$ vagrant provision
```
