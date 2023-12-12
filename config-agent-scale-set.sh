#!/bin/bash

# Variables de configuración
ORGANIZATION_URL="https://dev.azure.com/alilteam"
PROJECT_NAME="devops-alil-case-processor"
POOL_NAME="devops-scaleagent-casereview"
AGENT_NAME="Agent-$(hostname)"
PAT_TOKEN="zwahui7mdoeofstkzj3jnqxv5bsk4qctwwtrehqb7gwxr57pv6na"

# Descargar e instalar el Azure Pipelines Agent
curl -O https://vstsagentpackage.azureedge.net/agent/3.230.2/vsts-agent-linux-x64-3.230.2.tar.gz
tar zxvf  vsts-agent-linux-x64-3.230.2.tar.gz

# Configurar el agente
./config.sh --unattended \
  --url $ORGANIZATION_URL \
  --auth pat \
  --token $PAT_TOKEN \
  --pool $POOL_NAME \
  --agent $AGENT_NAME \
  --replace

# Iniciar el agente
sudo ./svc.sh install
sudo ./svc.sh start
