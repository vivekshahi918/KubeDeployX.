provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "my_cluster" {
  name     = "my-eks-cluster"
  role_arn = "<EKS_ROLE_ARN>"

  vpc_config {
    subnet_ids = ["<SUBNET_ID1>", "<SUBNET_ID2>"]
  }
}
