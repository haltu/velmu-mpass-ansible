# CentOS & Ansible setup for MPASS trial velmu

Before starting:
* Development: Run `vagrant up`.
* Production: Clone https://code.haltu.net/s-velmu/ansible-trial-velmu-app to `/srv/ansible`.

Server deployment:
1. Configure credentials in `/srv/ansible/group_vars/vault`.
2. Run `/srv/ansible/ansible.sh` inside the VM as root.
3. Run `ansible-playbook shibboleth.yml` for Apache & Shibboleth setup.
4. Run `ansible-playbook demosp.yml` for multiple demo env setup.

Deploy bew:
1. Switch to user bew.
2. Clone https://code.haltu.net/s-velmu/trial-velmu-app to `/home/bew/bew`.
3. Copy `local_settings.py` and `newrelic.ini` from `/home/demosp` to `/home/demosp/demosp`.
4. Check that the branch is correct.
5. Run Django `migrate`, `collectstatic` and `compress`.
6. Run `buildout` and `buildout -c production.cfg`.
7. Restart Supervisor processes.

Deploy demosp:
1. Switch to user demosp.
2. Clone https://code.haltu.net/s-velmu/trial-velmu-app-demosp to `/home/demosp/demosp`.
3. Copy `local_settings_*.py` (five of them) and `newrelic.ini` from `/home/demosp` to `/home/demosp/demosp`.
4. Check that the branch is correct.
5. Run Django `migrate`, `collectstatic` and `compress`.
6. Run `buildout` and `buildout -c production.cfg`.
7. Restart Supervisor processes.
