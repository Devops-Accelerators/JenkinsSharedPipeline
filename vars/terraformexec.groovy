def call(String name='') {
   sh 'terraform init /var/lib/jenkins/workspace/sas2/groupWork/terraform/'
   sh 'terraform apply -auto-approve /var/lib/jenkins/workspace/sas2/groupWork/terraform/'
   echo "step: ${name}"
}
