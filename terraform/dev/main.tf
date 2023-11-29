module "aws-develop" {
    source = "../infra"
    aplication = "devOps-jm"
    region_aws = "us-east-1"
    instance_ami_aws = "ami-0fc5d935ebf8bc3bc"
    instance_type_aws = "t2.micro"
    environment = "develop"
    ssh_key_name = "ssh_id"
    ssh_key_public = var.TF_VAR_ssh_key_public
}


output "DEVELOP_IP" {
  value = module.aws-develop.IP 
}
