provider "aws" {
          region ="eu-west-1"
        }
resource "aws_key_pair" "sas"{
          key_name = "${var.key_name}" 
          public_key = "${file("${var.key_path}")}"
        }
resource "aws_instance" "inst" {
          ami ="${data.aws_ami.image.id}"
          instance_type ="${var.instance_type}"
        tags{
                Name="my_instance1"
            }
       }
       

