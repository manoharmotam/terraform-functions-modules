resource "aws_instance" "test-ec2" {
    ami = local.ami
    instance_type = local.instance_type
    vpc_security_group_ids = [ aws_security_group.test-sg.id ]

    tags = {
        Name = "${var.project}-${var.environment}"
    }
}

resource "aws_security_group" "test-sg" {
    name = "test-ec2"
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }


    tags = {
        Name = "${var.project}-${var.environment}"
    }

    lifecycle {
      create_before_destroy = true
    }
}