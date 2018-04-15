resource "aws_s3_bucket" "lio-bucket" {
  bucket = "${var.bucket-name}"
  acl    = "private"

  tags {
    Name        = "${var.environment}-bucket"
    Environment = "${var.environment}"
  }
}