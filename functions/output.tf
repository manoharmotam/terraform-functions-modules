#Here is where you can demonstrate some of the functions


#printing regular string
output "instance_data" {
  value = data.aws_instance.get_ec2_data.private_ip
}

output "rev_ip" {
    value = strrev(data.aws_instance.get_ec2_data.private_ip) #prints the string in reverse(172.31.66.44 ==> 44.66.31.172 )
}

#Separates the string with provided delimiter and returns a list (172.31.66.44 ==> ["172", "31", "66", "44"])
output "separator" {
    value = split(".",data.aws_instance.get_ec2_data.private_ip)
}

#Replaces the string with provided delimiter with another (172.31.66.44 ==> 172.31.66.44)
output "replace" {
    value = replace(data.aws_instance.get_ec2_data.private_ip, ".", "-")
}

#Indents the output to 8 spaces in this case (172.31.66.44 ==> "        172.31.66.44")
output "indent" {
    value = indent(8, data.aws_instance.get_ec2_data.private_ip)
}


#Get S3 regional domain name
output "s3_data" {
    value = data.aws_s3_bucket.get_s3_data.bucket_regional_domain_name
}


#encodes the the zone_id with base64
output "b64encode" {
    value = base64encode(data.aws_s3_bucket.get_s3_data.hosted_zone_id)
}

#simple contains fucntion that checks a substring in a string
output "strcontains" {
    value = strcontains(data.aws_s3_bucket.get_s3_data.bucket_regional_domain_name, "us-east-1")
    description = "Checks if the regional domain name contains the us-east-1 in its string"
}