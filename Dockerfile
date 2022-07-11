# Imagem JBoss EAP 7.4 

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7



RUN mkdir -p /opt/eap/modules/org/postgres/main/
COPY module.xml /opt/eap/modules/org/postgres/main/
COPY postgresql-42.2.5.jar /opt/eap/modules/org/postgres/main/
COPY Lab6A.war /opt/eap/standalone/deployments/
COPY datasource.sh /opt/eap/
#RUN /bin/sh /opt/eap/datasource.sh
