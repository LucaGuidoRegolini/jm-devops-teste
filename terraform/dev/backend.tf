terraform {
  backend "s3" {
    bucket = "terraform-jm-devops-dev-terraform-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
