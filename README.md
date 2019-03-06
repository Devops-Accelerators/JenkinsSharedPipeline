# JenkinsSharedPipeline

Aim :-

To automate the entire process of creating customized AMI followed by an AWS instance using this AMI.
It will also deploy a web application using docker.


Jenkins Shared Library :-

  The Jenkins shared libraries concept helps you to extract reusable parts from your pipeline and to keep your pipeline code small and easy to maintain. Custom library steps can be added using a custom library according to the Jenkins shared libraries concept instead of adding groovy coding to the Jenkinsfile .


Call to Jenkins Shared Library:-

Shared Libraries marked Load implicitly allows Pipelines to immediately use classes or global variables defined by any such libraries. To access other shared libraries, the Jenkinsfile needs to use the @Library annotation, specifying the library’s name:
      Eg.:- @Library('my-shared-library') _

Technologies Used :-

  * Jenkins as an orchestrator
         
  * AWS as cloud platform
  
  * Terraform and Packer as Iaac
  
  * Docker for containerization
  
]
  
  
  
