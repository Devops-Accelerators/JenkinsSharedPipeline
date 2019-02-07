provider "aws" {
          region ="eu-west-1"
        }
resource "aws_key_pair" "sas"{
          key_name = "${var.key_name}" 
          public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAsIKg3tK+rFBKxLqi/gCVrU751oinb49TX+ovV2iJeNj38Pg1Ox66kBrt+goaAT0F9J3vuSVh9MZLiGKgc4X1ifv8aUN5my3O88cX51G+NgEwS5DeNJkp70lhJCPjJ+89ELIu+YlCuUCvfoi70zlyEkExMjc5uLTFi9+e
MW6jC4hGxnEy9fzE2p+Eh2AMWv3oKYU8gnsfhk6eGoqmSXKjP5r/wzCj/cywc+uRt84s19g07Nn+bHX9687m0S+GoOf4BBG8fWCRSBSzJL7JYAY1NErxv7Np27d1kYsY51T77Xiv5w4Heiq5uboDndtwEaSmTFBOeYoXQVmQSXnwNY1pBw==" 
        }
resource "aws_instance" "inst" {
          ami ="${data.aws_ami.image.id}"
          instance_type ="${var.instance_type}"
          key_name = "${aws_key_pair.sas.id}"
        tags{
                Name="my_instance1"
            }
       }
       

