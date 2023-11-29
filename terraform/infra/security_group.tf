resource "aws_security_group" "alb" {
  name   = "alb_ECS_${var.environment}"
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "${var.aplication} alb ${var.environment}"
    Aplication = var.aplication
    Service = "Security Group"
    Environment = var.environment
    Terraform: "true"
  }
}

resource "aws_security_group_rule" "tcp_alb_ingress_project" {
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.alb.id
}

resource "aws_security_group_rule" "tcp_alb_ingress_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.alb.id
}
