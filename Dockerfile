# Imagem JBoss EAP 7.4 

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7

COPY postgresql-42.2.5.jar /opt/eap/
COPY Lab6A.war /opt/eap/standalone/deployments/

RUN /opt/eap/datasource.sh
