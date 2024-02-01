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

aws configure list-profiles


aws sts get-caller-identity --profile developer

```
vim ~/.aws/config

[profile eks-admin]
role_arn = arn:aws:iam::1111111111:role/eks-admin
source_profile = developer
``````

aws eks --region <REGION> update-kubeconfig --name <CLUSTER_NAME>

aws eks update-kubeconfig \
  --name rias-touch-ecommerce-cluster \
  --region eu-central-1 \
  --profile eks-admin


kubectl auth can-i "*" "*"


$ terraform state rm module.eks.kubernetes_config_map_v1_data.aws_auth[0]


