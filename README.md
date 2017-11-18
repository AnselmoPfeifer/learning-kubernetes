# learning-kubernetes
##  Install kubectl 
- Debian
```
apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl
```
- CentOs
```
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
    [kubernetes]
    name=Kubernetes
    baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
    enabled=1
    gpgcheck=1
    repo_gpgcheck=1
    gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF
setenforce 0
yum install -y kubelet kubeadm kubectl
systemctl enable kubelet && systemctl start kubelet
```
- Links:
    - https://kubernetes.io/docs/setup/independent/install-kubeadm/

## Install minikube:
```
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
- chmod +x minikube
- sudo mv minikube /usr/local/bin/
```
- minikube start / Start new VM
- minikube dashboard / Open panel admin the kubernetes
- Links:
    - https://github.com/kubernetes/minikube

## Using kubectl
- kubectl config use-context minikube / gce
- kubectl config current-context / Show context
- kubectl config set-context gce / Set new context

- kubectl create ns javaneiros
- kubectl get service --namespace=javaneiros
- kubectl get pods --namespace=javaneiros
- kubectl delete pod XYZ --namespace=javaneiros


- Links:
    - https://kubernetes.io
    - https://www.katacoda.com/courses/kubernetes