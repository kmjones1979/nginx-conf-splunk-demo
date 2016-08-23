GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}# mkdir -p /etc/ssl/nginx${NC}"
sleep 2
mkdir -p /etc/ssl/nginx

echo -e "${GREEN}# cp nginx-repo.* /etc/ssl/nginx/${NC}"
sleep 2
cp nginx-repo.* /etc/ssl/nginx/

echo -e "${GREEN}# yum install -y ca-certificates vim${NC}"
sleep 2
yum install -y ca-certificates vim

echo -e "${GREEN}# wget -P /etc/yum.repos.d https://cs.nginx.com/static/files/nginx-plus-7.repo${NC}"
sleep 2
wget -P /etc/yum.repos.d https://cs.nginx.com/static/files/nginx-plus-7.repo

echo -e "${GREEN}# yum install -y nginx-plus${NC}"
sleep 2
yum install -y nginx-plus

echo -e "${GREEN}# /usr/sbin/nginx${NC}"
sleep 2
/usr/sbin/nginx

echo -e "${GREEN}# ps aux | grep nginx${NC}"
sleep 2
ps aux | grep nginx

echo -e "${GREEN}# curl localhost${NC}"
sleep 2
curl localhost
