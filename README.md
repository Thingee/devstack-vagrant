Run an OpenStack Dev Environment Now!
=====================================

This repo contains a box for the [Vagrant](http://vagrantup.com) [Virtual Box](https://www.virtualbox.org) provider, to allow someone to run an [OpenStack](http://openstack.org) dev environment using [DevStack](http://devstack.org) in a virtual machine.

## Install and run
```
$ git clone https://github.com/Thingee/devstack-vagrant
$ cd devstack-vagrant
$ vagrant box add --provider virtualbox --name devstack devstack.box
$ vagrant up
```

## What Does This Do?
Running ```vagrant up``` will start up the virtual machine using Virtual Box. Once the virtual machine is up, it'll be provisioned with the setup.sh script, which will make sure all OpenStack code in the virtual machine is up-to-date. Then it'll bring up the OpenStack services with that latest code.

## How Do I Know It Worked?
The output will stop and at the end say something like "2014-08-17 03:34:28.294 | stack.sh completed in 224 seconds."

## What Do I Do Now?
Congrats you now have a small OpenStack cloud running in a single VM. You can run ```vagrant ssh``` to log into the VM and begin poking around. All OpenStack code will be located in /opt/stack. You can see output from the OpenStack services by running ```screen -x stack```. You can try out OpenStack through the Horizon dashboard by going 127.0.0.1:8080 from your browser. The username is admin and password is secrete.

## Requirements
* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://www.vagrantup.com/downloads.html)
