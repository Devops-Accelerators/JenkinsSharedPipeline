 variable "ami" {
  default = "${data.aws_ami.image.id}" 
}
variable "instance_type" {
  default = "t2.micro"
}

variable "key_path" {
  default = "${{SAS_PUB}}"
}
variable "key_name" {
  default = "SAS_PRI..ppk"
}
