provider "aws" {
          region ="eu-west-1"
        }
        resource "aws_instance" "inst" {
          ami = "$${AMI_ID}"
          instance_type = "t2.micro"

        tags{
                Name="my_instance1"
        }
  }
