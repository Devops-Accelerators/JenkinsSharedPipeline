data "aws_ami" "ami" {
  most_recent      = true
  executable_users = ["self"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  name_regex = "^sas@123.*"
  owners     = ["self"]
}
