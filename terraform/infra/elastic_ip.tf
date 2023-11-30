resource "aws_eip" "mundo_invest_lb" {
  instance = aws_instance.app_server.id
  domain   = "vpc"

 depends_on = [ aws_instance.app_server ]

  tags = {
    Name = "${var.aplication} ip ${var.environment}"
    Aplication = var.aplication
    Service = "Elastic IP"
    Environment = var.environment
    Terraform: "true"
  }
}

output "IP" {
    value = aws_eip.mundo_invest_lb.public_ip
    depends_on = [ aws_eip.mundo_invest_lb ]
}
