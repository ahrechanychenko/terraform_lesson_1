# Terraform Practice for Lesson 1

1) Create service account with permission to create/delete compute instances - Compute Engine Admine role 
 - IAM->Service Accounts-> Create Service Account 
 - grant role Compute Admin and Network Admin
 - Open Compute Engine default service account and grant newly created service account role -  Service Account user 
 - Generate Key for S/A and download to your laptop


2) Update provider.tf file with your project info and location of S/A key
3) Create google_computer_instance resource using https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#example-usage
4) run terraform init to initialise project workspace and download terraform plugins
   - Сheck .terraform folder content
6) Create variables for image, zone, network name , replace hardcoded values with links to variables  
   - terraform plan + terraform apply

7) Add output for ip address
   re-run terraform plan + terraform apply 
