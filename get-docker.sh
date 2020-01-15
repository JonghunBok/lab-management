sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt-key fingerprint 0EBFCD88
curl -s https://get.docker.io/ubuntu/ | sudo sh


sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

