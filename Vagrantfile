Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "forwarded_port", guest: 8000, host: 8000

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
