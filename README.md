# CentOS & Ansible setup for MPASS trial velmu

Before starting:
* Development: Run `vagrant up`
* Production: Clone https://code.haltu.net/s-velmu/ansible-trial-velmu-app to `/srv/ansible`

Server deployment:
1. Configure credentials in `/srv/ansible/group_vars/vault`
2. Run `/srv/ansible/ansible.sh` inside the VM as root
3. Run `ansible-playbook shibboleth.yml` for Apache & Shibboleth setup.
4. Switch to user bew
5. Clone https://code.haltu.net/s-velmu/trial-velmu-app to `/home/bew/bew`
6. Switch to develop branch
7. Run `buildout`
8. Restart Supervisor processes
