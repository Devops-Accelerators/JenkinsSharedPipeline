def call(String path) {
   echo "path=${path}"
   sh "terraform init ${path}"
   sh "terraform apply -auto-approve ${path}"
}
