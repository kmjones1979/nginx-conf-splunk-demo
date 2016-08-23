GREEN='\033[0;32m'
NC='\033[0m'

echo "# wget https://download.splunk.com/products/universalforwarder/releases/6.4.2/linux/splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm"
sleep 2
wget https://download.splunk.com/products/universalforwarder/releases/6.4.2/linux/splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo "# rpm -i splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm"
sleep 2
rpm -i splunkforwarder-6.4.2-00f5bb3fa822-linux-2.6-x86_64.rpm

echo "# /opt/splunkforwarder/bin/splunk start --accept-license"
sleep 2
/opt/splunkforwarder/bin/splunk start --accept-license

echo "# /opt/splunkforwarder/bin/splunk enable boot-start"
sleep 2
/opt/splunkforwarder/bin/splunk enable boot-start

echo "# ps aux | grep splunk"
sleep 2
ps aux | grep splunk
