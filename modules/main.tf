resource "aws_instance" "test-ec2" {
    ami = local.ami
    instance_type = local.instance_type
    vpc_security_group_ids = [ aws_security_group.test-sg.id ]
}

resource "aws_security_group" "test-sg" {
    name = "test-ec2"

    lifecycle {
      create_before_destroy = true
    }
}