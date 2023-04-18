#! /bin/sh

minikube start;

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade --install argocd argo/argo-cd \
  --namespace argocd \
  --create-namespace \
  -f ./argocd/values.yaml

eval $(minikube docker-env);

docker build -t app:latest ./project
