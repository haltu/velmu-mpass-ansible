Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 8443
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 15672, host: 15672

  config.vm.hostname = "demo.velmu.fi"
  config.vm.synced_folder ".", "/srv/ansible/"

  config.vm.provider "virtualbox" do |v|
    v.gui = false
    if defined?($global_vm_cpus)
      v.cpus = $global_vm_cpus
    end
    if defined?($global_vm_memory)
      v.memory = $global_vm_memory
    end
  end

end
