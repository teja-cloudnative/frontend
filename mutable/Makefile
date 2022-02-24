help:
	@echo "Usage: make dev | make prod"

dev:
	@cd env-dev && rm -rf .terraform && terraform init && terraform apply -auto-approve

prod:
	@cd env-prod && rm -rf .terraform && terraform init && terraform apply -auto-approve