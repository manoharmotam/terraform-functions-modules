data "aws_instance" "get_ec2_data" {
  filter {
    name = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name = "instance-state-name"
    values = ["stopped"]
  }
}

data "aws_s3_bucket" "get_s3_data" {
  bucket = "s3-test-bucket-for-terraform-functions"
}