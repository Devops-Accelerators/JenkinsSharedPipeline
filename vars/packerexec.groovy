def call(String path=''){
  sh 'packer validate ${path}'
  sh 'packer build -machine-readable -var aws_access_key="${AWS_ACCESS_KEY_ID}"  -var aws_secret_key="${AWS_SECRET_ACCESS_KEY}"  ${path}'
  }
