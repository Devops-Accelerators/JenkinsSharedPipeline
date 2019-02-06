data "aws_ami" "image" {
most_recent = true
owners=["self"]
filter {
name = "virtualization-type"
values = ["hvm"]
}
filter {
name = "name"
values = ["sas@123_*"]
}
}
