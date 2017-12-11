# Docker files fo Mattermost-LDAP

## Prerequirements

- curl
- docker
- docker-compose

## Install

Edit docker-compose.xml and mattermost config file(mattermost/config.json).

```bash
./init.sh
sudo docker-compose build
sudo docker-compose up -d
```
