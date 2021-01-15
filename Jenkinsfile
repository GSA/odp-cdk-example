pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Bootstrap CDK') {
      agent any
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }

      }
    }

  }
}