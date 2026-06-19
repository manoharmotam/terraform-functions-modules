data "aws_instance" "get_data" {
  filter {
    name = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name = "instance-state-name"
    values = ["stopped"]
  }
}

