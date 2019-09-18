@Library('my_shared_library')_
node {
    
    
    stage('install packer'){
       tool name: 'PACKER', type: 'com.cloudbees.jenkins.plugins.customtools.CustomTool' 
       
    }
    stage('Checkout external proj') {
        git branch: 'master',
            credentialsId: 'github',
            url: 'https://github.com/Devops-Accelerators/JenkinsSharedPipeline.git'
        

        sh "ls -lat"
    }
    
    stage('image create'){
         echo 'creating an image'
        packerexec "/var/lib/jenkins/workspace/shared/resources/pack.json"
    }
    stage('instance creation'){
        echo 'creating an instance'
        echo pwd
        terraformexec "/var/lib/jenkins/workspace/shared/terraform/"
    }
    stage('git remove'){
        sh "rm -rf /var/lib/jenkins/workspace/shared/*"
    }
}
