# Imagem JBoss EAP 7.4 

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7

COPY Lab6A.war /opt/eap/standalone/deployments/

COPY postgresql-42.2.5.jar /opt/eap/

RUN /opt/eap/bin/jboss-cli.sh -c --command="module add --name=org.postgres --resources=/opt/eap/postgresql-42.2.5.jar --dependencies=javax.api,javax.transaction.api"

RUN /opt/eap/bin/jboss-cli.sh -c --command="/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgres",driver-class-name=org.postgresql.Driver)"

RUN /opt/eap/bin/jboss-cli.sh -c --command="data-source add --jndi-name=java:/PostGreDS --name=PostgrePool --connection-url=jdbc:postgresql://postgresql/appdb --driver-name=postgres --user-name=use --password=pass"
