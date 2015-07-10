Vagrant.configure(2) do |config|
  config.vm.box = "stucco/stucco-ubuntu1404"
  config.vm.hostname = "stucco"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.network "private_network", ip: "10.10.10.100"
end
