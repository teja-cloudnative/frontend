help:
	@echo "Usage: make dev | make prod"

dev dev-apply:
	@cd env-dev && rm -rf .terraform && terraform init && terraform apply -auto-approve

prod prod-apply:
	@cd env-prod && rm -rf .terraform && terraform init && terraform apply -auto-approve

destroy-dev:
	@cd env-dev && rm -rf .terraform && terraform init && terraform destroy -auto-approve

destroy-prod:
	@cd env-prod && rm -rf .terraform && terraform init && terraform destroy -auto-approve