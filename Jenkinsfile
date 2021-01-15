pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Bootstrap CDK') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        dir(path: 'serverless') {
          sh 'cdk bootstrap'
        }

      }
    }

  }
}