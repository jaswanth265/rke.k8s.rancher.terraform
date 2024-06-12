3 node cluster

kops create cluster --name=k8sjk.xyz --state=s3://k8sjkbucket \
--zones=ue-west-1a,ue-west-2b,ue-west-2c --node-count=3 --control-plane-count=3 \
--node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-zones=ue-west-1a,ue-west-2b,ue-west-2c \
--control-plane-volume-size 15 --node-volume-size 15 --ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=k8sjk.xyz --networking calico --yes

2 node cluster

kops create cluster --name=k8sjk.xyz --state=s3://k8sjkbucket \
--zones=ue-west-1a,ue-west-2b --node-count=2 --control-plane-count=2 \
--node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-zones=ue-west-1a,ue-west-2b \
--control-plane-volume-size 15 --node-volume-size 15 --ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=k8sjk.xyz --networking calico --yes


single node cluster

kops create cluster --name=k8sjk.xyz --state=s3://k8sjkbucket \
--zones=eu-west-2a --node-count=1 --control-plane-count=1 \
--node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-zones=eu-west-2a \
--control-plane-volume-size 15 --node-volume-size 15 --ssh-public-key ~/.ssh/id_ed25519.pub \
--dns-zone=k8sjk.xyz --networking calico --yes

 id_ed25519
-rw-r--r-- 1 root root  101 Jun  5 00:03 id_ed25519.pub

kops delete cluster --name=k8sjk.xyz --state=s3://k8sjkbucket --yes 

## Adding Aliases

export NAME=k8sjk.xyz
export KOPS_STATE_STORE=s3://k8sjkbucket
export AWS_REGION=eu-west-2
export CLUSTER_NAME=k8sjk.xyz
export EDITOR='/usr/bin/nano'
#export K8S_VERSION=1.6.4
alias ku=kubectl
alias pods='kubectl get pods -A'
alias pots='kubectl get pods'
alias deploy='kubectl get deployment'
alias svc='kubectl get svc'
alias nodes='kubectl get nodes'
echo 'source <(kubectl completion bash)' >>~/.bashrc
echo 'alias ku=kubectl' >>~/.bashrc
echo 'complete -o default -F __start_kubectl ku' >>~/.bashrc

#!/bin/bash
sudo apt update
sudo ssh-keygen
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
sudo unzip awscliv2.zip
sudo ./aws/install
sudo aws --version
sudo cd /usr/local/bin/
sudo wget https://github.com/kubernetes/kops/releases/download/v1.28.7/kops-linux-amd64
sudo mv kops-linux-amd64 kops
sudo chmod 777 kops
sudo curl -LO https://dl.k8s.io/release/v1.29.2/bin/linux/amd64/kubectl
sudo chmod 777 kubectl



