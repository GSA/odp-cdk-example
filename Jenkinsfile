pipeline {
  agent any
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