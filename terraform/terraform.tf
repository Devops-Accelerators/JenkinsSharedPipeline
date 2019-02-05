provider "aws" {
          region ="eu-west-1"
        }
        resource "aws_instance" "inst" {
          ami = "data.aws_ami.ami.id"
          instance_type = "t2.micro"

        tags{
                Name="my_instance1"
        }
  }
