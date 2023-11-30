resource "aws_s3_bucket" "beanstalk_deploy" {
  bucket = "beanstalk-deploy-dev"
}

resource "aws_s3_object" "bucket_docker" {

  bucket = "beanstalk-deploy-dev"
  key    = "Dockerrun.aws.json"
  source = "Dockerrun.aws.json"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"

  depends_on = [aws_s3_bucket.beanstalk_deploy]
}
