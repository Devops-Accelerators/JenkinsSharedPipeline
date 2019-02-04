def call(String step=''){
  sh 'packer validate /var/lib/jenkins/workspace/sas2/groupWork/resources/pack.json'
  sh 'packer build -machine-readable  -var aws_access_key="${AWS_ACCESS_KEY_ID}"  -var aws_secret_key="${AWS_SECRET_ACCESS_KEY}"  /var/lib/jenkins/workspace/sas2/groupWork/resources/pack.json'
  echo "step :${step}"
  }
