provider "aws" {
          region ="eu-west-1"
        }
resource "aws_instance" "inst" {
          ami ="${data.aws_ami.image.id}"
          instance_type ="${var.instance_type}"
        tags{
                Name="my_instance1"
            }
       }
       

