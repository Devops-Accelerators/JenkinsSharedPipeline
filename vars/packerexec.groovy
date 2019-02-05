def call(String step=''){
  sh 'packer validate /var/lib/jenkins/workspace/sas2/resources/pack.json'
  sh 'packer build -debug -machine-readable -var aws_access_key="${AWS_ACCESS_KEY_ID}"  -var aws_secret_key="${AWS_SECRET_ACCESS_KEY}"   /var/lib/jenkins/workspace/sas2/resources/pack.json > ~/terraform/output.txt '
 // sh 'AMI_ID="$(echo $AMI |sed \'s/:/\n/g\'| tail -n 1)"'
//echo 'variable "AMI_ID" { default = "\'${AMI_ID}\'" }' > /terraform/var.tf 


  echo "step :${step}"
  }
