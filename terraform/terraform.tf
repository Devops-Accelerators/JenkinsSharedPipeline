provider "aws" {
          region ="eu-west-1"
        }
resource "aws_key_pair" "sas"{
          key_name = "${var.key_name}" 
          public_key = "${file("${var.key_path}")}"
        }
resource "aws_instance" "inst" {
          ami ="${var.ami}"
          instance_type = "t2.micro" "${var.instance_type}"
          key_name = "${aws_key_pair.sas.id}"
        tags{
                Name="my_instance1"
            }
       }
       

