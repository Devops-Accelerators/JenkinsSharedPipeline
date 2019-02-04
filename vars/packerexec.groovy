def call(String step=''){
  sh 'packer validate /var/lib/jenkins/workspace/sas2/resources/pack.json'
  sh 'sleep 60'
  sh 'packer build -v -var aws_access_key="${AWS_ACCESS_KEY_ID}"  -var aws_secret_key="${AWS_SECRET_ACCESS_KEY}"  /var/lib/jenkins/workspace/sas2/resources/pack.json'
  echo "step :${step}"
  }
