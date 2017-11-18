#!/bin/bash

NS='javaneiros' 
kubectl create namespace ${NS}
sleep 5

kubectl apply --filename=k8s/nginx/nginx_configmap.yaml --namespace ${NS}
kubectl apply --filename=k8s/nginx/nginx_service.yaml --namespace ${NS}
kubectl apply --filename=k8s/nginx/nginx_deployment.yaml --namespace ${NS}
sleep 5

# docker build --force-rm -t anspfeifer/tomcat8:2.0 .
# docker push anspfeifer/tomcat8:2.0

kubectl apply --filename=k8s/tomcat/tomcat_service.yaml --namespace ${NS}
kubectl apply --filename=k8s/tomcat/tomcat_deployment.yaml --namespace ${NS}
sleep 5

kubectl get pods --namespace ${NS}
