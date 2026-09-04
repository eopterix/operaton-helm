#!/bin/sh
#PLUGIN_VERSION=2.2.0-M1
PLUGIN_VERSION=2.1.0
SRC_URL=https://repo1.maven.org/maven2/org/operaton/bpm/extension/operaton-keycloak-run/${PLUGIN_VERSION}/operaton-keycloak-run-${PLUGIN_VERSION}.jar
TARGET_FILE=/operaton/configuration/userlib/operaton-keycloak-run-${PLUGIN_VERSION}.jar
if [ ! -f "$TARGET_FILE" ]; then
  echo "Keycloak plugin will be added..."
  curl -o $TARGET_FILE $SRC_URL
  chmod 644 /operaton/configuration/userlib/operaton-keycloak-run-${PLUGIN_VERSION}.jar
  echo "Keycloak plugin added."
else
  echo "Keycloak plugin already there."B
fi
echo "Starting Operaton..."
cd /operaton
/sbin/tini -- ./operaton.sh

