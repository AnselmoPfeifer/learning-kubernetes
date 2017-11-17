#!/bin/bash

NS='javaneiros'
kubectl create namespace ${NS}

NS='--namespace javaneiros'
echo "Instalando o Nginx"
kubectl apply --filename=k8s/nginx/nginx_configmap.yaml ${NS}
kubectl apply --filename=k8s/nginx/nginx_service.yaml ${NS}
kubectl apply --filename=k8s/nginx/nginx_deployment.yaml ${NS}

echo "Instalando o Tomcat"
kubectl apply --filename=k8s/tomcat/tomcat_configmapusers.yaml ${NS}
kubectl apply --filename=k8s/tomcat/tomcat_service.yaml ${NS}
kubectl apply --filename=k8s/tomcat/tomcat_deployment.yaml ${NS}