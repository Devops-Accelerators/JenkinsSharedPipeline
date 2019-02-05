AMI_ID=$1
echo "$AMI_ID"
temp='variable "AMI_ID" { default = " '
temp2='"}'
c=$temp$AMI_ID$temp2
echo "$c" > ~/workspace/sas2/terraform/var.tf
