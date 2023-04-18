.PHONY: configure-repo
configure-repo:
	@echo "Configuring Helm repository"
	helm repo add argo https://argoproj.github.io/argo-helm
	helm repo update

.PHONY: deploy-argocd
deploy-argocd:
	helm upgrade --install argocd argo/argo-cd \
		--namespace argocd \
		--create-namespace \
		-f ./argocd/values.yaml
