resource "aws_elastic_beanstalk_application" "application_beanstalk" {
  name        = var.repository_name

  tags = {
    Name = "${var.aplication} beanstalk ${var.environment}"
    Aplication = var.aplication
    Service = "Beanstalk"
    Environment = var.environment
    Terraform: "true"
  }
}

resource "aws_elastic_beanstalk_environment" "environment_beanstalk" {
  name                = "${var.repository_name}-${var.environment}"
  application         = aws_elastic_beanstalk_application.application_beanstalk.name
  solution_stack_name = "64bit Amazon Linux 2 v3.5.9 running Docker"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.instance_type_aws
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.max_size
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }
}


resource "aws_elastic_beanstalk_application_version" "beanstalk_version" {
  depends_on = [
    aws_elastic_beanstalk_environment.environment_beanstalk,
    aws_elastic_beanstalk_application.application_beanstalk,
    aws_s3_object.bucket_docker
  ]
  name        = "${var.repository_name}-${var.environment}"
  application = var.repository_name
  bucket      = aws_s3_bucket.beanstalk_deploy.id
  key         = aws_s3_object.bucket_docker.id
}
