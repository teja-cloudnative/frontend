help:
	@echo "Usage: make dev | make prod"

dev:
	@cd env-dev && rm -rf .terraform && terraform init && terraform apply -auto-approve

prod:
	@cd env-prod && rm -rf .terraform && terraform init && terraform apply -auto-approve

destroy-dev:
	@cd env-dev && rm -rf .terraform && terraform init && terraform destroy -auto-approve

destroy-prod:
	@cd env-prod && rm -rf .terraform && terraform init && terraform destroy -auto-approve