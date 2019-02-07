 variable "instance_type" {
  default = "t2.micro"
}

#variable "key_path" {
 # default = "{{env `SAS_PUB`}}"
#}
variable "key_name" {
  default = "SAS_PRI..ppk"
}
