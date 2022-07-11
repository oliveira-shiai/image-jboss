#!/bin/bash

/opt/eap/bin/jboss-cli.sh <<EOT
embed-server
module add --name=org.postgres --resources=/opt/eap/postgresql-42.2.5.jar --dependencies=javax.api,javax.transaction.api
EOT
