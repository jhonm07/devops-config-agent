sudo rm -rf  /home/azureuser/myagent/
mkdir /home/azureuser/myagent/
cd /home/azureuser/myagent/
 tar zxvf ../vsts-agent-linux-x64-3.230.0.tar.gz
export agentname=$(hostname)
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token  pof7nzede2tkqzadp67it4sh7mlznj6pgqcmysfrptgxqo3wjgla --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula
sudo ./svc.sh install
 sudo ./svc.sh start
