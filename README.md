terraform fmt

terraform init -backend-config=./environments/dev/backend.txt

terraform validate

terraform plan 

terraform apply -var-file=./environments/dev/values.tfvars 

terraform apply -var-file=./environments/dev/values.tfvars

## Change to other environment

terraform init tfplan -backend-config=./environments/pro/backend.txt -reconfigure



aws eks --region <REGION> update-kubeconfig --name <CLUSTER_NAME>

aws eks update-kubeconfig \
  --name rias-touch-ecommerce-cluster \
  --region eu-central-1 \
  --profile eks-admin

aws configure --profile developer

AKIA54ATKYMY4QW2R5EV
cO438pTtVYYp2tPNqKFpJ/8LE6w23a4HYfgA4ZNq

aws configure list-profiles


aws sts get-caller-identity --profile developer

```
vim ~/.aws/config

[profile eks-admin]
role_arn = arn:aws:iam::953523290929:role/eks-admin
source_profile = developer
``````

aws eks --region <REGION> update-kubeconfig --name <CLUSTER_NAME>

aws eks update-kubeconfig \
  --name rias-touch-ecommerce-cluster \
  --region eu-central-1 \
  --profile eks-admin


kubectl auth can-i "*" "*"


$ terraform state rm module.eks.kubernetes_config_map_v1_data.aws_auth[0]


deleting EC2 Internet Gateway (igw-0ac08387f8fe4906f): error detaching EC2 Internet Gateway (igw-0ac08387f8fe4906f) from VPC (vpc-0fdb21d933bce7bf7): DependencyViolation: Network vpc-0fdb21d933bce7bf7 has some mapped public address(es). Please unmap those public address(es) before detaching the gateway.

deleting EC2 Subnet (subnet-08c9ead88236a0d38): DependencyViolation: The subnet 'subnet-08c9ead88236a0d38' has dependencies and cannot be deleted.
