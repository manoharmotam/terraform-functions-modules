#Here is where you can demonstrate some of the functions


#printing regular string
output "instance_data" {
  value = data.aws_instance.get_data.private_ip
}

output "rev_ip" {
    value = strrev(data.aws_instance.get_data.private_ip) #prints the string in reverse(172.31.66.44 ==> 44.66.31.172 )
}