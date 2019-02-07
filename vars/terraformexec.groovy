def call(String path='') {
   echo "${path}"
   sh 'terraform init /var/lib/jenkins/workspace/sas2/terraform/'
   sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/sas2/terraform/'
}
