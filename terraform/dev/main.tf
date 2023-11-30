module "aws-develop" {
    source = "../infra"
    aplication = "devOps-jm"
    region_aws = "us-east-1"
    instance_type_aws = "t2.micro"
    environment = "develop"
    repository_name = "jm-develops-test"
    max_size = 1
}
