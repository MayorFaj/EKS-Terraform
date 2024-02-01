# Create IAM Trust Policy for EBS CSI driver
resource "aws_iam_role" "ebs_csi_driver_role" {
  name               = "AmazonEKS_EBS_CSI_DriverRole"
  assume_role_policy = <<-EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${module.eks.oidc_provider}"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "${module.eks.oidc_provider}:aud": "sts.amazonaws.com",
          "${module.eks.oidc_provider}:sub": "system:serviceaccount:${local.ebs_csi_service_account_namespace}:${local.ebs_csi_service_account_name}"
        }
      }
    }
  ]
}
EOF
}

# Attach the AWS managed policy to the IAM role
resource "aws_iam_role_policy_attachment" "ebs_csi_driver_policy_attachment" {
  role       = aws_iam_role.ebs_csi_driver_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
}

