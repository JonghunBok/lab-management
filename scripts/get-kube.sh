curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y kubelet=1.14.10-00 kubeadm=1.14.10-00 kubectl=1.14.10-00
sudo vim /etc/systemd/system/kubelet.service.d/10-kubeadm.conf 
# Add [Environment="KUBELET_EXTRA_ARGS=--fail-swap-on=false"]

sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab


sudo systemctl daemon-reload
sudo systemctl restart kubelet
sudo kubeadm reset

# Change the IP and the token below
## For master node
### sudo kubeadm init --ignore-preflight-errors=all
## For worker node
### sudo kubeadm join 192.168.0.4:6443 --token 1yeh0p.cghl30nu2dm67rwn     --discovery-token-ca-cert-hash sha256:92e98a1b3f07c62941d06a6bc074dd301211f7a94bd72a33f6bfdb321ec2e7b7

# After forming a cluster
# You have to to these to use kubectl command as a user.
# mkdir -p $HOME/.kube
# sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
# sudo chown $(id -u):$(id -g) $HOME/.kube/config

