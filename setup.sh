#! /bin/sh

minikube start;

make configure-repo;

make deploy-argocd;
