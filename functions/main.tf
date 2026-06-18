locals {
  ip = "${chomp(data.http.get_response.response_body)}/32"
}


data "http" "get_response" {
  url = "https://checkip.amazonaws.com"
}


output "name" {
  value = local.ip
}
