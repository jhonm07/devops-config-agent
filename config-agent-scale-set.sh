sudo rm -rf  /home/azureuser/myagent/
mkdir /home/azureuser/myagent/
cd /home/azureuser/myagent/
 tar zxvf ../vsts-agent-linux-x64-3.230.0.tar.gz
export agentname=$(hostname)
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token 6bf2wh2ecqwjyqhhsjrsavquker4zhnzizx5rfe4me6ny5obxzta --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula
sudo ./svc.sh install
 sudo ./svc.sh start
