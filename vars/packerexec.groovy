def call(String step=''){
  sh ' ./var/lib/jenkins/workspace/sas2/groupwork/scriptPack.sh'
  echo" step :${step}"
  }
