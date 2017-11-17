#!/bin/bash

NS='javaneiros'
PASSWORD='dzcSwuUegS'

kubectl create namespace ${NS}
kubectl get namespace 

kubectl create secret generic mysql-password --from-literal=password=${PASSWORD} --namespace ${NS}
kubectl get secrets  --namespace ${NS}

kubectl apply --filename=k8s/mysql/mysql_service.yaml --namespace ${NS}
kubectl apply --filename=k8s/mysql/mysql-persistentvolume.yaml --namespace ${NS}
kubectl apply --filename=k8s/mysql/mysql_deployment.yaml --namespace ${NS}

kubectl get pods --namespace ${NS}

kubectl apply --filename=k8s/wordpress/wordpress-persistentvolume.yaml --namespace ${NS}
kubectl apply --filename=k8s/wordpress/wordpress_service.yaml --namespace ${NS}
kubectl apply --filename=k8s/wordpress/wordpress_deployment.yaml --namespace ${NS}
kubectl get pods --namespace ${NS}