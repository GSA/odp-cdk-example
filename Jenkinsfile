pipeline {
  agent none
  stages {
    stage('Run Build') {
      agent {
        dockerfile {
          filename 'Dockerfile'
        }

      }
      steps {
        dir(path: 'serverless') {
          sh '''npm run build
cdk bootstrap'''
        }

      }
    }

  }
}