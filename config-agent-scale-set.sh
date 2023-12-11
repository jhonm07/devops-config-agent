sudo rm -rf  /home/azureuser/myagent/
mkdir /home/azureuser/myagent/
cd /home/azureuser/myagent/
 tar zxvf ../vsts-agent-linux-x64-3.230.0.tar.gz
export agentname=$(hostname)
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token zj437zwiuneo5wcrwo4m4hfhivwhmnwvjdk6xkimmduz7ntm23mq --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula
sudo ./svc.sh install
 sudo ./svc.sh start
