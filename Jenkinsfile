pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Bootstrap CDK') {
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }

      }
    }

  }
}