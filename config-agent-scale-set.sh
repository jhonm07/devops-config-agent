sudo rm -rf  /home/azureuser/myagent/ >> /tmp/out.log
mkdir /home/azureuser/myagent/
cd /home/azureuser/myagent/
 tar zxvf ../vsts-agent-linux-x64-3.230.0.tar.gz
export agentname=$(hostname)
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token  2nkczo54wll3fqhaxudqk4j7mkfkqi62z3k6adurnpl27dayicja --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula 
sudo ./svc.sh install
 sudo ./svc.sh start >> /tmp/out.log
