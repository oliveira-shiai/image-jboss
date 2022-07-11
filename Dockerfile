# Imagem JBoss EAP 7.4 

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7

COPY datasource.sh /opt/eap/

USER root

RUN chmod +x /opt/eap/datasource.sh

USER 185
COPY postgresql-42.2.5.jar /opt/eap/
COPY Lab6A.war /opt/eap/standalone/deployments/

RUN /opt/eap/datasource.sh
