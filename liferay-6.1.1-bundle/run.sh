#!/bin/bash

set -e

asadmin start-domain
if [ ! -f /.glassfish_admin_password_changed ]; then
    /change_admin_password.sh
fi
echo "=> Restarting Glassfish server"
asadmin stop-domain
echo "=> Starting and running Glassfish server"
asadmin start-domain & > asadmin.out 2>&1
tail -f  /opt/liferay-portal-6.1.1-ce-ga2/glassfish-3.1.2/domains/domain1/logs/server.log
