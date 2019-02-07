 variable "aws_region" {
  default = "eu-west-1"
}
variable "ami" {
  default = "${data.aws_ami.image.id}" 
}
variable "instance_type" {
  default = "t2.micro"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "id_rsa.pub"
}
variable "key_name" {
  description = "SSH Public Key name"
  default = "aws_terraform"
}
