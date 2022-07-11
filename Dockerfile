# Imagem JBoss EAP 7.4 

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7

COPY postgresql-42.2.5.jar /opt/eap/
COPY Lab6A.war /opt/eap/standalone/deployments/

RUN /opt/eap/bin/jboss-cli.sh <<EOT \
    && embed-server \
    && module add --name=org.postgres --resources=/opt/eap/postgresql-42.2.5.jar --dependencies=javax.api,javax.transaction.api \
    && EOT
