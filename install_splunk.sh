GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}# yum install -y vim${NC}"
sleep 2
yum install -y vim

echo -e "${GREEN}# wget https://download.splunk.com/products/splunk/releases/6.4.2/linux/splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 2
wget https://download.splunk.com/products/splunk/releases/6.4.2/linux/splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# rpm -i splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 2
rpm -i splunk-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# /opt/splunk/bin/splunk start --accept-license${NC}"
sleep 2
/opt/splunk/bin/splunk start --accept-license

echo -e "${GREEN}# /opt/splunk/bin/splunk enable boot-start${NC}"
sleep 2
/opt/splunk/bin/splunk enable boot-start

echo -e "${GREEN}# curl -ILs localhost:8000 | grep HTTP${NC}"
sleep 2
curl -ILs localhost:8000 | grep HTTP
