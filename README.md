# CentOS & Ansible setup for MPASS trial velmu

Before starting:
* Development: Run `vagrant up`
* Production: Clone https://code.haltu.net/s-velmu/ansible-trial-velmu-app to `/srv/ansible`

Server deployment:
1. Configure credentials in `/srv/ansible/group_vars/vault`
1. Run `/srv/ansible/ansible.sh` inside the VM as root
2. Switch to user bew
3. Place your private key (used in GitLab & Bitbucket) to `~/.ssh/id_rsa` on bew
4. Clone https://code.haltu.net/s-velmu/trial-velmu-app to `/home/bew/bew`
5. Switch to develop branch
6. Run `buildout`
7. Restart Supervisor processes

