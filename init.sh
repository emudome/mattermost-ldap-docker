#!/bin/bash -eux
cd `dirname $0`

# Download Mattermost-LDAP
commit_id=502ae7ecb4ca9ffd93b558185f575f64407ad95a
curl -OL https://github.com/Crivaledaz/Mattermost-LDAP/archive/${commit_id}.tar.gz
tar zxvf ${commit_id}.tar.gz
rm ${commit_id}.tar.gz
mv Mattermost-LDAP-${commit_id} Mattermost-LDAP

# Apply patch
patch -p0 -d Mattermost-LDAP < Mattermost-LDAP.patch

# Move files to Dockerfile folders.
mv Mattermost-LDAP/oauth app/
mv Mattermost-LDAP/init_postgres.sh db/
rm -rf Mattermost-LDAP
