## Deployment Requirements

To run onemission locally or use any of the deployment scripts the following requirements must be met:

- [Download and install docker](https://docs.docker.com/install)
- [Download and install docker-compose](https://docs.docker.com/compose/install/)
- [Download and install ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Running Locally

Quick start:

```
# Clone this repo with onemission submodule
git clone git@github.com/njhoffman/onemission-deploy.git
# cp bootstrap file, install wordpress core and launch docker containers
cd onemission && cp wp-bootstrap-config.sample.php wp-bootstrap-config.php && ./install.sh
cd .. && ./start.sh
```

For more details visit the [Running Locally](docs/Running-Locally.md) page.

## Deployment Scripts

Quick start:

```
# IMPORTANT: get vault password from Nick or John to access secret keys, export as env variable
export VAULT_PASSWORD="insert_password"
# Automation scripts are ran with ansible-playbook.
ansible-playbook <name>
```

The following playbook names are available:

- sync-local: dumps the live database into the local ./sql folder for importing into mysql docker container
- sync-stage: transfers live database and imports into staging site, transfers all files in uploades folder to staging site
- deploy-stage: triggers the staging site to pull from the repo updating to the latest version
- deploy-live: triggers the live site to pull from the repo updating to the latest version

For more details visit the [Ansible Playbooks](docs/Ansible-Playbooks.md) page.
