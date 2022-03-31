provider "aws" {
  region = "eu-west-2"
}


/*
creating backend here mean that .tfstate file is pushing into s3 bucket,
which is menationed while terraform init like below,

terraform init -backend-config bucket=terraform-31032022 -backend-config region=eu-west-2 -backend-config key=terraform-3103
2022/terraform-playground.tfstate

*/
terraform {
  required_version = "1.1.7"
  backend "s3" {
    encrypt = true
  }

}