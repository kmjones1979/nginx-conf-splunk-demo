GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}# wget https://download.splunk.com/products/universalforwarder/releases/6.4.2/linux/splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 2
wget https://download.splunk.com/products/universalforwarder/releases/6.4.2/linux/splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# rpm -i splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm${NC}"
sleep 2
rpm -i splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo -e "${GREEN}# /opt/splunkforwarder/bin/splunk start --accept-license${NC}"
sleep 2
/opt/splunkforwarder/bin/splunk start --accept-license

echo -e "${GREEN}# /opt/splunkforwarder/bin/splunk enable boot-start${NC}"
sleep 2
/opt/splunkforwarder/bin/splunk enable boot-start

echo -e "${GREEN}# ps aux | grep splunk${NC}"
sleep 2
ps aux | grep splunk
