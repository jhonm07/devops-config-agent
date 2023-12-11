#!/bin/bash
cd /home/azureuser/myagent
export AZP_URL=https://dev.azure.com/alilteam
export AZP_TOKEN=7hyu43qu5qqvttylrds54knavtlnwu24pukc6u3c4vqy3u7wgdoa
export AZP_AGENTPOOL=devops-scaleagent-casereview
export AZP_AGENT_NAME=agent01
./config.sh remove
sudo  ./svc.sh uninstall
sudo ./svc.sh install
sudo ./svc.sh start
                    
