data "aws_ami" "ami" {
  most_recent      = true
  executable_users = ["self"]

  filter {
    name   = "owner-alias"
    values = ["self"]
  }
  name_regex = "^sas@123.*"
  owners     = ["self"]
}
