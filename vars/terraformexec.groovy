def call(String name='') {
   sh 'terraform init /var/lib/jenkins/workspace/sas2/terraform/'
   sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/sas2/terraform/'
   echo "step: ${name}"
}
