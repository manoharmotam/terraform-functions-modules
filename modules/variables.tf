variable "instance_type" {
    default = "c7i-flex.large"

    validation {
      condition = contains(["t3.micro", "c7i-flex.large"], var.instance_type)
      error_message = "The instance type can be only 't3.micro' or 'c7i-flex.large'."
    }
}

variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "ec2_tags" {
  default = {}
}

variable "sg_tags" {
  default = {}
}