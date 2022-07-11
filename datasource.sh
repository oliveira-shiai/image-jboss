#!/bin/bash

sleep 15

/opt/eap/bin/jboss-cli.sh -c --command="module add --name=org.postgres --resources=/opt/eap/postgresql-42.2.5.jar --dependencies=javax.api,javax.transaction.api"
sleep 2
/opt/eap/bin/jboss-cli.sh -c --command="/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)"
sleep 2
/opt/eap/bin/jboss-cli.sh -c --command="data-source add --jndi-name=java:/PostGreDS --name=PostgrePool --connection-url=jdbc:postgresql://postgresql/appdb --driver-name=postgres --user-name=use --password=pass"
