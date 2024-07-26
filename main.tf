resource "aws_s3_bucket" "bucket1" {
	bucket = "mohan-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "mohan-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "mohan-date-dblocks"
    encrypt        = true
  }
}
