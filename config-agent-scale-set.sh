sudo rm -rf  /home/azureuser/myagent/
mkdir /home/azureuser/myagent/
cd /home/azureuser/myagent/
 tar zxvf ../vsts-agent-linux-x64-3.230.0.tar.gz
export agentname=$(hostname)
./config.sh --unattended --url https://dev.azure.com/alilteam --auth pat --token 35i2qndvfmc5ycxrmu57cldhxcbaal4bdsuu5mezqxiw7clh7egq --pool devops-scaleagent-casereview --agent $agentname --acceptTeeEula
sudo ./svc.sh install
 sudo ./svc.sh start
