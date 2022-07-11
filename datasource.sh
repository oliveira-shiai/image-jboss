#!/bin/bash

/opt/eap/bin/jboss-cli.sh <<EOT
embed-server
module add --name=org.postgres --resources=/opt/eap/postgresql-42.2.5.jar --dependencies=javax.api,javax.transaction.api
EOT

/opt/eap/bin/jboss-cli.sh <<EOT
embed-server
/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)
EOT
