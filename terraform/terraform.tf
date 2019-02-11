provider "aws" {
          region ="eu-west-1"
        }
resource "aws_instance" "inst" {
          ami ="${data.aws_ami.image.id}"
          instance_type ="${var.instance_type}"
          key_name="packkey"
        tags{
                Name="my_instance"
            }
resource "aws_volume_attachment" "vol_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.vol.id}"
  instance_id = "${aws_instance.inst.id}"
}
 resource "aws_ebs_volume" "vol" {
 size              = 1
 availability_zone = "eu-west-1a"
 type              ="gp2"
 tags = {
    Name = "ebs_volume"
  }

}


          
       }
       

