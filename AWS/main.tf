provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

# Deploy storage resource
module "storage" {
  source = "./S3"
  project_name = "${var.project_name}"
}
