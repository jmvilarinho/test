all: run

run:
	terraform fmt
	terraform init
	terraform plan

apply:
	terraform apply -auto-approve
	
destroy:
	terraform apply -auto-approve -destroy
	
.PHONY: all run
