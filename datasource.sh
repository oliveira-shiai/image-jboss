#!/bin/bash

/opt/eap/bin/jboss-cli.sh <<EOT
embed-server
/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)
EOT

exit
