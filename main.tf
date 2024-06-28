resource "aws_s3_bucket" "bucket1" {
	bucket = "rahul1801-test"
}


provider "aws" {
    region = "eu-west-1"
}
