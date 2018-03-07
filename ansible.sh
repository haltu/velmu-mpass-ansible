yum -y install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook velmu.yml
