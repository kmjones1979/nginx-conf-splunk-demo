GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}# yum install -y vim${NC}"
sleep 3
yum install -y vim

echo -e "${GREEN}# wget https://download.splunk.com/products/splunk/releases/6.4.2/linux/splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 3
wget https://download.splunk.com/products/splunk/releases/6.4.2/linux/splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# rpm -i splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 3
rpm -i splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# /opt/splunk/bin/splunk start --accept-license${NC}"
sleep 3
/opt/splunk/bin/splunk start --accept-license

echo -e "${GREEN}# /opt/splunk/bin/splunk enable boot-start${NC}"
sleep 3
/opt/splunk/bin/splunk enable boot-start

echo -e "${GREEN}# ps aux | grep splunk${NC}"
sleep 3
ps aux | grep splunk

echo -e "${GREEN}# curl -ILs localhost:8000 | grep HTTP${NC}"
sleep 3
curl -ILs localhost:8000 | grep HTTP
