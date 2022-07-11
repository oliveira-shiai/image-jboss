# Imagem JBoss EAP 7.4 // Cetelem

FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel7

#IMPLANTAÇÃO EAP
#COPY jboss-eap-7.4/ /opt/eap/

#DEPLOY APP
COPY Lab6A.war /opt/eap/standalone/deployments/


