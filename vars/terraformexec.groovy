def call(String path='') {
   sh 'terraform init ${path}'
   sh 'terraform apply -auto-approve ${path}'
}
