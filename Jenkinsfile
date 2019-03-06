@Library('my_shared_library')_
node {
    
    
    stage('install packer'){
       tool name: 'PACKER', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool' 
       
    }
    stage('Checkout external proj') {
        git branch: 'master',
            credentialsId: 'github',
            url: 'https://github.com/MindtreeDevops/JenkinsSharedPipeline.git'
        

        sh "ls -lat"
    }
    
    stage('image create'){
         echo 'creating an image'
        packerexec "/var/lib/jenkins/workspace/sas2/resources/pack.json"
    }
    stage('instance creation'){
        echo 'creating an instance'   
        terraformexec "/var/lib/jenkins/workspace/sas2/terraform/"
    }
    stage('git remove'){
        sh 'rm -rf /var/lib/jenkins/workspace/sas2/*'
    }
}
