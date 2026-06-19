variable "instance_type" {
    type = set(string)
    default = ["t3.micro", "c7i-flex.large"]
}