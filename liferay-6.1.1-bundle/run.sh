#!/bin/bash

set -e
echo "=> Starting and running Glassfish server"
if [ ! -f /.glassfish_admin_password_changed ]; then
  echo "=> Performing first time starting"
  asadmin start-domain
  /change_admin_password.sh
  echo "=> Restarting Glassfish server"
  asadmin stop-domain
fi
asadmin start-domain --verbose
