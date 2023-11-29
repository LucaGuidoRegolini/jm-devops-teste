resource "aws_instance" "app_server" {
  ami           = var.instance_ami_aws
  instance_type = var.instance_type_aws
  key_name      = var.ssh_key_name

  # user_data            = filebase64("instance_${var.environment}.sh")
  vpc_security_group_ids = [aws_security_group.alb.id]

  subnet_id = module.vpc.public_subnets[0]


  tags = {
    Name = "${var.aplication} EC2 ${var.environment}"
    Aplication = var.aplication
    Service = "EC2"
    Environment = var.environment
    Terraform: "true"
  }
}
