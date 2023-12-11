#!/bin/bash

# Define las variables necesarias
organization="https://dev.azure.com/alilteam/"
project="devops-alil-case-processor"
pool="devops-scaleagent-casereview"
agentName="agent01"
patToken="6bf2wh2ecqwjyqhhsjrsavquker4zhnzizx5rfe4me6ny5obxzta"

# Descarga el agente
mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/3.230.2/vsts-agent-linux-x64-3.230.2.tar.gz
tar zxvf vsts-agent-linux-x64-3.230.2.tar.gz
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token  --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula


# Instala el agente como servicio
sudo ./svc.sh install
sudo ./svc.sh start
