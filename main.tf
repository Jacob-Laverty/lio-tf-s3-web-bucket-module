provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "bucket" {
  source      = "./modules/s3/bucket"
  environment = "${var.environment}"
  bucket-name = "${var.environment}-lio-bucket"
}