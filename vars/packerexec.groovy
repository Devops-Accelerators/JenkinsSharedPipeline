def call(String step=''){
  sh 'packer validate /var/lib/jenkins/workspace/sas2/groupwork/resources/pack.json'
  sh 'packer build -machine-readable -var 'aws_access_key=${AWS_ACCESS_KEY_ID}'  -var 'aws_secret_key=${AWS_SECRET_ACCESS_KEY}' pack.json'
  //sh 'AMI=`packer build -machine-readable -var 'aws_access_key=${AWS_ACCESS_KEY_ID}'  -var 'aws_secret_key=${AWS_SECRET_ACCESS_KEY}' pack.json | awk -F, '$0 ~/artifact,0,id/ {print $6}'` 
//echo 'variable "AMI_ID" { type = "map" default = "'${AMI_ID}'" }' > /var/lib/jenkins/workspace/sas2/groupwork/resources/amivar.tf
  echo "step :${step}"
  }
