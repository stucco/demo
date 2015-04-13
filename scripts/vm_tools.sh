#!/bin/bash

apt-get -y install linux-headers-$(uname -r)

apt-get -y install cloud-init

case "$PACKER_BUILDER_TYPE" in

vmware-iso|vmware-vmx)
  echo "installing VMWare Tools..."
  mkdir /tmp/vmfusion
  mkdir /tmp/vmfusion-archive
  mount -o loop /home/vagrant/linux.iso /tmp/vmfusion
  tar xzf /tmp/vmfusion/VMwareTools-*.tar.gz -C /tmp/vmfusion-archive
  /tmp/vmfusion-archive/vmware-tools-distrib/vmware-install.pl --default
  umount /tmp/vmfusion
  rm -rf  /tmp/vmfusion
  rm -rf  /tmp/vmfusion-archive
  rm /home/vagrant/*.iso
  ;;

virtualbox-iso|virtualbox-ovf)
  echo "installing VirtualBox Guest Additions..."
  mkdir /tmp/vbox
  VER=$(cat /home/vagrant/.vbox_version)
  mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
  sh /tmp/vbox/VBoxLinuxAdditions.run
  umount /tmp/vbox
  rmdir /tmp/vbox
  rm /home/vagrant/*.iso
  ;;

*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected."
    echo "Known are virtualbox-iso|virtualbox-ovf|vmware-iso|vmware-vmx."
    ;;

esac