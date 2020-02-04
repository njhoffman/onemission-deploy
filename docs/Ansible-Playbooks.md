# Ansible Playbooks (Deployment Scripts)

Secret credentials are kept in encrypted ansible-vault file, get the vault password and export it as an environment variable:

```
export VAULT_PASSWORD="insert_password"
```

Variables are found in `group_vars` on directly in the playbook file, they can be modified from the command line.

## Available playbooks

### sync-local

`ansible-playbook sync-local`

- Dumps the live database into the local ./sql folder
- This (and anything in ./sql folder) gets imported into the mysql docker container on entry

### sync-stage

`ansible-playbook sync-stage`

- Transfers and imports live database into the staging site
- Duplicates all files in the live /content/uploads folder to the staging site

### deploy-stage

`ansible-playbook deploy-stage`

- Triggers the staging site to pull from the repo updating to the latest version
- Currently on master branch.

### deploy-live

`ansible-playbook deploy-live`

- Triggers the live site to pull from the repo updating to the latest version
- Currently on master branch.
