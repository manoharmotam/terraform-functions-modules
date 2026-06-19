#Here is where you can demonstrate some of the functions


#printing regular string
output "instance_data" {
  value = data.aws_instance.get_data.private_ip
}

output "rev_ip" {
    value = strrev(data.aws_instance.get_data.private_ip) #prints the string in reverse(172.31.66.44 ==> 44.66.31.172 )
}

#Separates the string with provided delimiter and returns a list (172.31.66.44 ==> ["172", "31", "66", "44"])
output "separator" {
    value = split(".",data.aws_instance.get_data.private_ip)
}

#Replaces the string with provided delimiter with another (172.31.66.44 ==> 172.31.66.44)
output "replace" {
    value = replace(data.aws_instance.get_data.private_ip, ".", "-")
}

