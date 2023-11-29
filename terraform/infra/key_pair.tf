resource "aws_key_pair" "iac-mundo_invest" {
  key_name   = var.ssh_key_name
  public_key = var.ssh_key_public

  tags = {
    Name = "${var.aplication} key pair ${var.environment}"
    Aplication = var.aplication
    Service = "Key Pair"
    Environment = var.environment
    Terraform: "true"
  }
}
