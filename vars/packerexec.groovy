def info(path){
  echo "${path}"
  sh 'packer validate echo "${path}"'
  sh 'packer build -machine-readable -var aws_access_key="${AWS_ACCESS_KEY_ID}"  -var aws_secret_key="${AWS_SECRET_ACCESS_KEY}"  /var/lib/jenkins/workspace/sas2/resources/pack.json'
  }
